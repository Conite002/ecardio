import 'package:ecardio/localization/applocalization.dart';
import 'package:ecardio/services/database/database.dart';
import 'package:ecardio/services/shared_pref.dart';
import 'package:ecardio/views/bottomnav.dart';
import 'package:ecardio/widgets/appconfig.dart';
import 'package:ecardio/widgets/infodialog.dart';
import 'package:ecardio/widgets/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_number_field/flutter_phone_number_field.dart';

FocusNode focusNode = FocusNode();

class AdditionalInfo extends StatefulWidget {
  final String userId;

  AdditionalInfo({required this.userId});

  @override
  _AdditionalInfoState createState() => _AdditionalInfoState();
}

class _AdditionalInfoState extends State<AdditionalInfo> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController birthController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController professionController = TextEditingController();
  TextEditingController pictureController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.primaryColor,
                      AppColors.secondaryColor,
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        'Ecardio',
                        style: AppWidget.logoTextStyle('white'),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 30.0),
                              Text(
                                AppLocalizations.fr["additionalInfo"] ?? "",
                                style: AppWidget.headlineTextFeildStyle(),
                              ),
                              const SizedBox(height: 30.0),
                              FlutterPhoneNumberField(
                                focusNode: focusNode,
                                initialCountryCode: "TG",
                                pickerDialogStyle: PickerDialogStyle(
                                  countryFlagStyle:
                                      const TextStyle(fontSize: 17),
                                ),
                                decoration: const InputDecoration(
                                  hintText: 'Phone Number',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                languageCode: "en",
                                onChanged: (phone) {
                                  if (kDebugMode) {
                                    print(phone.completeNumber);
                                  }
                                },
                                onCountryChanged: (country) {
                                  if (kDebugMode) {
                                    print(
                                        'Country changed to: ${country.name}');
                                  }
                                },
                                controller: phoneController,
                              ),
                              const SizedBox(height: 16.0),
                              GestureDetector(
                                onTap: () async {
                                  final DateTime? picked = await showDatePicker(
                                    context: context,
                                    initialDate:
                                        _selectedDate ?? DateTime.now(),
                                    firstDate:
                                        DateTime(1910), // Adjust as needed
                                    lastDate: DateTime.now(),
                                  );
                                  if (picked != null &&
                                      picked != _selectedDate) {
                                    setState(() {
                                      _selectedDate = picked;
                                      birthController
                                          .text = "${picked.toLocal()}"
                                              .split(' ')[
                                          0]; // Update the birthController text
                                    });
                                  }
                                },
                                child: AbsorbPointer(
                                  child: TextFormField(
                                    controller: birthController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return AppLocalizations
                                                .fr["pleaseEnterBirthDate"] ??
                                            "";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText:
                                          AppLocalizations.fr["birthDate"] ??
                                              "",
                                      hintStyle:
                                          AppWidget.semiBoldTextFeildStyle(),
                                      prefixIcon:
                                          Icon(Icons.calendar_today_outlined),
                                    ),
                                    keyboardType: TextInputType.datetime,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              TextFormField(
                                controller: genderController,
                                readOnly: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations
                                            .fr["pleaseEnterGender"] ??
                                        "";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: AppLocalizations.fr["gender"] ?? "",
                                  hintStyle: AppWidget.semiBoldTextFeildStyle(),
                                  prefixIcon: Icon(Icons.person_outline),
                                ),
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text(
                                          AppLocalizations.fr["gender"] ?? "",
                                        ),
                                        content: Container(
                                          width: double.maxFinite,
                                          child: ListView(
                                            shrinkWrap: true,
                                            children: [
                                              ListTile(
                                                title: Text(
                                                  AppLocalizations.fr["male"] ??
                                                      "",
                                                ),
                                                onTap: () {
                                                  setState(() {
                                                    genderController.text =
                                                        AppLocalizations
                                                                .fr["male"] ??
                                                            "";
                                                  });
                                                  Navigator.pop(context);
                                                },
                                              ),
                                              ListTile(
                                                title: Text(
                                                  AppLocalizations
                                                          .fr["female"] ??
                                                      "",
                                                ),
                                                onTap: () {
                                                  setState(() {
                                                    genderController.text =
                                                        AppLocalizations
                                                                .fr["female"] ??
                                                            "";
                                                  });
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              const SizedBox(height: 16.0),
                              TextFormField(
                                controller: addressController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations
                                            .fr["pleaseEnterAddress"] ??
                                        "";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText:
                                      AppLocalizations.fr["address"] ?? "",
                                  hintStyle: AppWidget.semiBoldTextFeildStyle(),
                                  prefixIcon: Icon(Icons.location_on_outlined),
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              TextFormField(
                                controller: professionController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations
                                            .fr['pleaseEnterProfession'] ??
                                        "";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText:
                                      AppLocalizations.fr['profession'] ?? "",
                                  hintStyle: AppWidget.semiBoldTextFeildStyle(),
                                  prefixIcon: Icon(Icons.work_outline),
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    saveUserInfo();
                                  }
                                },
                                child: Text(
                                  AppLocalizations.fr["saveInfo"] ?? "",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontFamily: 'Poppins1',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20.0),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveUserInfo() async {
    User? user = FirebaseAuth.instance.currentUser;
    print('User: $user');
    String? name = await SharedPreferenceHelper().getUserName();
    String? userEmail = user!.email;
    Map<String, dynamic> userInfo = {
      "Phone": phoneController.text,
      "BirthDate": birthController.text,
      "Gender": genderController.text,
      "Address": addressController.text,
      "Profession": professionController.text,
      "Name": name,
      "Email": userEmail,
      "Wallet": "0",
    };

    try {
      await DatabaseMethods().addUserDetail(userInfo, widget.userId);
      await DatabaseMethods()
          .updatePhoneNumber(widget.userId, phoneController.text);
      // show popup
      const InfoDialog();
      // wait for 2 seconds
      await Future.delayed(const Duration(seconds: 3))
          .then((value) => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNav(),
                ),
              ));
    } catch (e) {
      print('Error saving user info: $e');
    }
  }
}
