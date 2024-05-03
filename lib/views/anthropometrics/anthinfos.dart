import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecardio/constants.dart';
import 'package:ecardio/localization/applocalization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AnthroInfos extends StatefulWidget {
  const AnthroInfos({Key? key}) : super(key: key);

  @override
  _AnthroInfosState createState() => _AnthroInfosState();
}

class _AnthroInfosState extends State<AnthroInfos> {
  final _formKey = GlobalKey<FormState>();

  final List<TextEditingController> _controllers = List.generate(
    AnthroInfoConstants.anthropometricKeys.length * 2,
    (index) => TextEditingController(),
  );

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informations Anthropométriques'),
      ),
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: () {
          if (_formKey.currentState!.validate()) {
            if (_currentStep < 1) {
              setState(() {
                _currentStep += 1;
              });
            } else {
              // Save form data
              _submitForm(context);
            }
          }
        },
        controlsBuilder:
            (BuildContext context, ControlsDetails? controlsDetails) {
          return Row(
            children: <Widget>[
              ElevatedButton(
                onPressed: controlsDetails?.onStepContinue,
                child: Text(
                  'Continuer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
              ),
              const SizedBox(width: 12),
              TextButton(
                onPressed: controlsDetails?.onStepCancel,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text(
                  'Retour',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        },
        steps: [
          Step(
            title: Text('Etape 1'),
            content: Form(
              key: _formKey,
              child: Column(
                children: List.generate(
                  11,
                  (index) => TextFormField(
                    controller: _controllers[index],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: AnthroInfoConstants.anthropometricKeys[index],
                      hintText: AnthroInfoConstants.infoDescriptions[
                          AnthroInfoConstants.anthropometricKeys[index]],
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'S\il vous plait veuillez entrer : ${AnthroInfoConstants.anthropometricKeys[index]}';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
          ),
          Step(
            title: Text('Etape 2'),
            content: Column(
              children: List.generate(
                11,
                (index) {
                  final TextEditingController controller =
                      _controllers[index + 4];
                  return TextFormField(
                    controller: controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText:
                          AnthroInfoConstants.anthropometricKeys[index + 4],
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'S\il vous plaît veuillez entrer :  ${AnthroInfoConstants.anthropometricKeys[index + 4]}';
                      }
                      return null;
                    },
                    initialValue:
                        controller.text.isNotEmpty ? controller.text : null,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: _currentStep == 1
          ? FloatingActionButton(
              onPressed: () async {
                final userId = FirebaseAuth.instance.currentUser?.uid;
                final data = await fetchAnthropometricData(userId!);

                if (data.isNotEmpty) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Enrégistrements précédents'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: data.entries.map((entry) {
                              return Text('${entry.key}: ${entry.value}');
                            }).toList(),
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child:
                                Text(AppLocalizations.fr['Close'] ?? 'Close'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      AppLocalizations.fr['No_previous_records_found'] ??
                          'No previous record found',
                    ),
                  ));
                }
              },
              child: Icon(Icons.visibility),
            )
          : null,
    );
  }

  void _submitForm(BuildContext context) async {
    try {
      final userId = FirebaseAuth.instance.currentUser?.uid;
      await FirebaseFirestore.instance
          .collection('anthropometrics')
          .doc(userId)
          .set(
            Map.fromEntries(
              AnthroInfoConstants.anthropometricKeys.asMap().entries.map(
                    (entry) =>
                        MapEntry(entry.value, _controllers[entry.key].text),
                  ),
            ),
          );

      final scaffoldMessenger = ScaffoldMessenger.of(context);
      scaffoldMessenger.showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          content: Text(
            AppLocalizations
                    .fr['Anthropometric_information_saved_successfully'] ??
                'Anthropometric information saved',
          ),
        ),
      );
    } catch (e) {
      final scaffoldMessenger = ScaffoldMessenger.of(context);
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.fr['Error_saving_anthropometric_information'] ??
                'Error saving anthropometric information',
          ),
        ),
      );
      print('Error saving anthropometric information: $e');
    }
  }

  Future<Map<String, dynamic>> fetchAnthropometricData(String userId) async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('anthropometrics')
          .doc(userId)
          .get();
      if (snapshot.exists) {
        return snapshot.data() as Map<String, dynamic>;
      } else {
        return {};
      }
    } catch (e) {
      print('Error fetching anthropometric data: $e');
      return {};
    }
  }
}
