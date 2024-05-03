// Disease Diagnosis class
import 'dart:ffi';

import 'package:ecardio/views/diagnostic/diagnostichandler.dart';

class DiseaseDiagnosis {
  DiseaseHandler _handler;

  DiseaseDiagnosis() : _handler = AllergyHandler() {
    final DiseaseHandler allergyHandler = AllergyHandler();
    final DiseaseHandler migraineHandler = AllergyHandler();
    final DiseaseHandler hypertensionHandler = AllergyHandler();

    _handler.setNextHandler(allergyHandler);
    allergyHandler.setNextHandler(migraineHandler);
    migraineHandler.setNextHandler(hypertensionHandler);
  }

  Map<String, dynamic> diagnose(double symptomLevel) {
    return _handler.handle(symptomLevel);
  }
}
