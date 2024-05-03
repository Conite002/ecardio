abstract class DiseaseHandler {
  DiseaseHandler? _nextHandler;

  void setNextHandler(DiseaseHandler handler) {
    _nextHandler = handler;
  }

  Map<String, dynamic> handle(double symptomLevel);
}

// Concrete handler for diagnosing allergy
class AllergyHandler extends DiseaseHandler {
  @override
  Map<String, dynamic> handle(double symptomLevel) {
    if (symptomLevel <= 3) {
      return {
        'level_gravity': 'Faible',
        'advices': ['Prenez des antihistaminiques', 'Évitez les allergènes'],
        'recommendation': 'Consulter un médecin pour un traitement approprié'
      };
    } else {
      return _nextHandler!.handle(symptomLevel);
    }
  }
}

// Concrete handler for diagnosing migraine
class MigraineHandler extends DiseaseHandler {
  @override
  Map<String, dynamic> handle(double symptomLevel) {
    if (symptomLevel <= 7) {
      return {
        'level_gravity': 'Moyen',
        'advices': [
          'Reposez-vous dans une pièce calme et sombre',
          'Utilisez des compresses froides'
        ],
        'recommendation': 'Consultez un médecin pour un traitement approprié'
      };
    } else {
      return _nextHandler!.handle(symptomLevel);
    }
  }
}

// Concrete handler for diagnosing hypertension
class HypertensionHandler extends DiseaseHandler {
  @override
  Map<String, dynamic> handle(double symptomLevel) {
    if (symptomLevel <= 10) {
      return {
        'level_gravity': 'Élevé',
        'advices': [
          'Prenez les médicaments prescrits',
          'Surveillez la pression artérielle'
        ],
        'recommendation': 'Consultez un médecin immédiatement'
      };
    } else {
      return {
        'level_gravity': 'Critique',
        'advices': [
          'Appelez les services d\'urgence',
          'Prenez les médicaments prescrits'
        ],
        'recommendation': 'Demandez une assistance médicale immédiate'
      };
    }
  }
}

//concrete handler for diagnosing diabetes
class DiabetesHandler extends DiseaseHandler {
  @override
  Map<String, dynamic> handle(double symptomLevel) {
    if (symptomLevel <= 5) {
      return {
        'level_gravity': 'Faible',
        'advices': [
          'Prenez les médicaments prescrits',
          'Surveillez la glycémie'
        ],
        'recommendation': 'Consultez un médecin pour un traitement approprié'
      };
    } else {
      return _nextHandler!.handle(symptomLevel);
    }
  }
}

//concrete handler for diagnosing hepatitis
class HepatitisHandler extends DiseaseHandler {
  @override
  Map<String, dynamic> handle(double symptomLevel) {
    if (symptomLevel <= 5) {
      return {
        'level_gravity': 'Faible',
        'advices': [
          'Prenez les médicaments prescrits',
          'Surveillez la fonction hépatique'
        ],
        'recommendation': 'Consultez un médecin pour un traitement approprié'
      };
    } else {
      return _nextHandler!.handle(symptomLevel);
    }
  }
}

//concrete handler for diagnosing smoking cessation
class SmokingCessationHandler extends DiseaseHandler {
  @override
  Map<String, dynamic> handle(double symptomLevel) {
    if (symptomLevel <= 5) {
      return {
        'level_gravity': 'Faible',
        'advices': [
          'Prenez les médicaments prescrits',
          'Surveillez les habitudes de tabagisme'
        ],
        'recommendation': 'Consultez un médecin pour un traitement approprié'
      };
    } else {
      return _nextHandler!.handle(symptomLevel);
    }
  }
}

//concrete handler for diagnosing dyslipidemia
class DyslipidemiaHandler extends DiseaseHandler {
  @override
  Map<String, dynamic> handle(double symptomLevel) {
    if (symptomLevel <= 5) {
      return {
        'level_gravity': 'Faible',
        'advices': [
          'Prenez les médicaments prescrits',
          'Surveillez le profil lipidique'
        ],
        'recommendation': 'Consultez un médecin pour un traitement approprié'
      };
    } else {
      return _nextHandler!.handle(symptomLevel);
    }
  }
}

class ObesityHandler extends DiseaseHandler {
  @override
  Map<String, dynamic> handle(double symptomLevel) {
    if (symptomLevel <= 5) {
      return {
        'level_gravity': 'Faible',
        'advices': ['Prenez les médicaments prescrits', 'Surveillez le poids'],
        'recommendation': 'Consultez un médecin pour un traitement approprié'
      };
    } else {
      return _nextHandler!.handle(symptomLevel);
    }
  }
}
