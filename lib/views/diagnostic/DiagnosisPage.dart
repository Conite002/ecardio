import 'package:ecardio/views/diagnostic/diagnosis.dart';
import 'package:flutter/material.dart';

class DiagnosticPage extends StatefulWidget {
  @override
  _DiagnosticPageState createState() => _DiagnosticPageState();
}

class _DiagnosticPageState extends State<DiagnosticPage> {
  // Health parameters fetched from Firebase or entered manually
  Map<String, String> healthParameters = {
    'CholesterolHDL': '',
    'CholesterolLDL': '',
    'Triglycerides': '',
    'CholesterolTotal': '',
    'TGO': '',
    'TGP': '',
    'GlycemiePostPrandiale': '',
    'Uree': '',
    'Creatinine': '',
    'SerologieHIV': '',
  };
  final Map<String, dynamic> results = <String, dynamic>{};

  // Diagnosis results
  Map<String, dynamic> diagnosisResults = {};
  DiseaseDiagnosis _diseaseDiagnosis = DiseaseDiagnosis();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diagnostique de santé'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Input fields for health parameters
            TextFormField(
              decoration: InputDecoration(labelText: 'Cholesterol HDL'),
              onChanged: (value) {
                healthParameters['CholesterolHDL'] = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Cholesterol LDL'),
              onChanged: (value) {
                healthParameters['CholesterolLDL'] = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Triglycerides'),
              onChanged: (value) {
                healthParameters['Triglycerides'] = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Cholesterol Total'),
              onChanged: (value) {
                healthParameters['CholesterolTotal'] = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'TGO'),
              onChanged: (value) {
                healthParameters['TGO'] = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'TGP'),
              onChanged: (value) {
                healthParameters['TGP'] = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Glycemie Post Prandiale'),
              onChanged: (value) {
                healthParameters['GlycemiePostPrandiale'] = value;
              },
            ),

            TextFormField(
              decoration: InputDecoration(labelText: 'Uree'),
              onChanged: (value) {
                healthParameters['Uree'] = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Creatinine'),
              onChanged: (value) {
                healthParameters['Creatinine'] = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Serologie HIV'),
              onChanged: (value) {
                healthParameters['SerologieHIV'] = value;
              },
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                performDiagnosis(context);
              },
              child: Text('Perform Diagnosis'),
            ),
            SizedBox(height: 20),
            // Display diagnosis results
            if (diagnosisResults.isNotEmpty) ...[
              Text('Diagnosis Results:'),
              Text('Level of Gravity: ${diagnosisResults['level_gravity']}'),
              Text('Advices: ${diagnosisResults['advices'].join(', ')}'),
              Text('Recommendation: ${diagnosisResults['recommendation']}'),
            ],
          ],
        ),
      ),
    );
  }

  void performDiagnosis(BuildContext context) {
    Map<String, dynamic> diagnosisResults = {};
    for (var key in healthParameters.keys) {
      if (healthParameters[key] == '') {
        return;
      } else {
        diagnosisResults =
            _diseaseDiagnosis.diagnose(healthParameters[key] as double);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Diagnosis Results'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                      'Level of Gravity: ${diagnosisResults['level_gravity']}'),
                  Text('Advices: ${diagnosisResults['advices'].join(', ')}'),
                  Text('Recommendation: ${diagnosisResults['recommendation']}'),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      }
    }
  }
}
