import 'dart:io';

import 'package:ecardio/main.dart';
import 'package:ecardio/services/shared_pref.dart';
import 'package:ecardio/views/anthropometrics/anthinfos.dart';
import 'package:ecardio/views/design_course/category_list_view.dart';
import 'package:ecardio/views/design_course/course_info_screen.dart';
import 'package:ecardio/views/design_course/popular_course_list_view.dart';
import 'package:ecardio/views/diagnostic/DiagnosisPage.dart';
import 'package:ecardio/views/quiz/quiz_category.dart';
import 'package:ecardio/widgets/imageWidget.dart';
import 'package:ecardio/widgets/widget_support.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';
import 'design_course_app_theme.dart';

class DesignCourseHomeScreen extends StatefulWidget {
  @override
  _DesignCourseHomeScreenState createState() => _DesignCourseHomeScreenState();
}

class _DesignCourseHomeScreenState extends State<DesignCourseHomeScreen> {
  CategoryType categoryType = CategoryType.ui;

  final ImagePicker _picker = ImagePicker();
  File? selectedImage;
  String? profile, name, email;

  Future getImage() async {
    var image = await _picker.pickImage(source: ImageSource.gallery);

    selectedImage = File(image!.path);
    setState(() {
      uploadItem();
    });
  }

  uploadItem() async {
    if (selectedImage != null) {
      String addId = randomAlphaNumeric(10);

      Reference firebaseStorageRef =
          FirebaseStorage.instance.ref().child("blogImages").child(addId);
      final UploadTask task = firebaseStorageRef.putFile(selectedImage!);

      var downloadUrl = await (await task).ref.getDownloadURL();
      await SharedPreferenceHelper().saveUserProfile(downloadUrl);
      setState(() {});
    }
  }

  getthesharedpref() async {
    profile = await SharedPreferenceHelper().getUserProfile();
    name = await SharedPreferenceHelper().getUserName();
    email = await SharedPreferenceHelper().getUserEmail();

    setState(() {});
  }

  onthisload() async {
    await getthesharedpref();
    setState(() {});
  }

  @override
  void initState() {
    onthisload();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              getAppBarUI(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black,
                    ),
                    child: Center(
                        child: Text('Ecardio',
                            style: AppWidget.logoTextStyle('white')))),
              ),
              Image.asset("images/heart.png", fit: BoxFit.cover),
              getCategoryUI(
                'Actions',
                'ici vous pouvez trouver des actions pour votre santé.',
                25,
                4.3,
                0,
              ),
              // Widget for the first block
              getClickableBlock(
                  'Jeux',
                  'Un jeu pour vous mieux maitriser les maladies cardiaques.',
                  Icons.gamepad,
                  context),
              // Widget for the second block
              getClickableBlock(
                  'Diagnostique',
                  'Description pour le bloc Diagnostique',
                  Icons.assessment,
                  context),
              // Widget for the third block
              getClickableBlock(
                  'Informations anthropométriques',
                  'Description pour le bloc Information Anthropique',
                  Icons.info,
                  context),
              getPopularCourseUI(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getPopularCourseUI() {
    return const SizedBox(
      height: 300,
      child: Padding(
        padding:
            EdgeInsets.fromLTRB(18, 8, 16, 8), // Adjust the padding as needed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Cours les plus populaires',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                letterSpacing: 0.27,
                color: DesignCourseAppTheme.darkerText,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: PopularCourseListView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget getClickableBlock(
      String title, String description, IconData icon, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (title == 'Jeux') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CategorySelectionScreen()),
          );
        }
        if (title == 'Diagnostique') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DiagnosticPage()),
          );
        }
        if (title == 'Informations anthropométriques') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AnthroInfos()),
          );
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 36,
              color: Colors.blue,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getCategoryUI(String title, String description, int money,
      double rating, double reward) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 8.0, left: 18, right: 16),
          child: Text(
            'Actions',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: <Widget>[
              getButtonUI(CategoryType.ui, categoryType == CategoryType.ui),
              const SizedBox(
                width: 16,
              ),
              getButtonUI(
                  CategoryType.coding, categoryType == CategoryType.coding),
              const SizedBox(
                width: 16,
              ),
              getButtonUI(
                  CategoryType.basic, categoryType == CategoryType.basic),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        getActionContainer(categoryType),
        const SizedBox(
          height: 16,
        ),
        CategoryListView(),
      ],
    );
  }

  void moveTo(String title, String description, int money, double rating,
      double reward) {
    Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => CourseInfoScreen(
          title: title,
          description: description,
          money: money,
          rating: rating,
          reward: reward,
        ),
      ),
    );
  }

  Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.ui == categoryTypeData) {
      txt = 'Conseils';
    } else if (CategoryType.coding == categoryTypeData) {
      txt = 'Recommandations';
    } else if (CategoryType.basic == categoryTypeData) {
      txt = 'Autres';
    }
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: isSelected
                ? DesignCourseAppTheme.nearlyBlue
                : DesignCourseAppTheme.nearlyWhite,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            border: Border.all(color: DesignCourseAppTheme.nearlyBlue)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white24,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            onTap: () {
              setState(() {
                categoryType = categoryTypeData;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12, bottom: 12, left: 18, right: 18),
              child: Center(
                child: Text(
                  txt,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.27,
                    color: isSelected
                        ? DesignCourseAppTheme.nearlyWhite
                        : DesignCourseAppTheme.nearlyBlue,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getSearchBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: 64,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor('#F8FAFB'),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(13.0),
                    bottomLeft: Radius.circular(13.0),
                    topLeft: Radius.circular(13.0),
                    topRight: Radius.circular(13.0),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: TextFormField(
                          style: const TextStyle(
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: DesignCourseAppTheme.nearlyBlue,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Search for course',
                            border: InputBorder.none,
                            helperStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: HexColor('#B9BABC'),
                            ),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.2,
                              color: HexColor('#B9BABC'),
                            ),
                          ),
                          onEditingComplete: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.search, color: HexColor('#B9BABC')),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          )
        ],
      ),
    );
  }

  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 6.5),
                child: Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(60),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: selectedImage == null
                        ? GestureDetector(
                            onTap: () {
                              getImage();
                            },
                            child: profile == null
                                ? Image.asset(
                                    "images/user.png",
                                    height: 120,
                                    width: 120,
                                    fit: BoxFit.cover,
                                  )
                                : Image.network(
                                    profile!,
                                    height: 120,
                                    width: 120,
                                    fit: BoxFit.cover,
                                  ),
                          )
                        : Image.file(
                            selectedImage!,
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getActionContainer(CategoryType categoryTypeData) {
    String title = '';
    String description = '';
    Color backgroundColor;
    switch (categoryTypeData) {
      case CategoryType.ui:
        title = 'Conseils';
        description =
            "L'exercice physique est essentiel pour maintenir un cœur en bonne santé. Essayez de faire au moins 150 minutes d'activité d'intensité modérée par semaine, comme la marche rapide, la natation ou le vélo";
        backgroundColor = Colors.blue; // Set background color for UI category
        break;
      case CategoryType.coding:
        title = 'Recommandations';
        description =
            'Effectuez des bilans de santé réguliers et consultez votre médecin pour des conseils personnalisés sur la prévention des maladies cardiovasculaires et le maintien de votre santé cardiaque';
        backgroundColor =
            Colors.green; // Set background color for coding category
        break;
      case CategoryType.basic:
        title = 'Autres ';
        description =
            "La consommation excessive d'alcool peut augmenter le risque de maladies cardiovasculaires. Limitez votre consommation d'alcool selon les recommandations de santé publique.";
        backgroundColor = Colors.orange;
        break;
    }

    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum CategoryType {
  ui,
  coding,
  basic,
}
