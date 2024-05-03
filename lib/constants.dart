import 'package:flutter/material.dart';

const primaryColor = Color(0xFF2697FF);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF212332);

const defaultPadding = 16.0;

final inputsKeys = [
  "TAS",
  "TAD",
  "Pouls",
  "Poids",
  "Taille",
  "IMC",
  "TourTaille",
  "Glycemie",
  "Uricemie",
  "Triglycerides",
  "CholesterolHDL",
  "CholesterolLDL",
  "CholesterolTotal",
  "TGO",
  "TGP",
  "GlycemiePostPrandiale",
  "Uree",
  "Creatinine",
  "SerologieHIV",
  "SerologieHepatiteB",
  "SerologieHepatiteC",
  "PSATotal"
];

class InputKeys {
  static const TAS = "TAS";
  static const TAD = "TAD";
  static const Pouls = "Pouls";
  static const Poids = "Poids";
  static const Taille = "Taille";
  static const IMC = "IMC";
  static const TourTailleFemme = "Taille_Femme";
  static const TourTailleHomme = "Taille_Homme";
  static const GlycemieJeun = "Glycemie_Jeun";
  static const Uricemie = "Uricemie";
  static const Triglycerides = "Triglycerides";
  static const CholesterolHDL = "CholesterolHDL";
  static const CholesterolLDL = "CholesterolLDL";
  static const CholesterolTotal = "CholesterolTotal";
  static const TGO = "TGO";
  static const TGP = "TGP";
  static const GlycemiePostPrandiale = "GlycemiePostPrandiale";
  static const Uree = "Uree";
  static const Creatinine = "Creatinine";
  static const SerologieHIV = "SerologieHIV";
  static const SerologieHepatiteB = "SerologieHepatiteB";
  static const SerologieHepatiteC = "SerologieHepatiteC";
  static const PSATotal = "PSATotal";
}

class Description {
  static const Taille = "Hauteur d'un individu en centimetres";
  static const TAS =
      "La tension artérielle systolique (TAS) est la pression exercée sur les parois des artères lorsque le cœur se contracte.";
  static const TAD =
      "La tension artérielle diastolique (TAD) est la pression exercée sur les parois des artères lorsque le cœur est au repos entre deux battements.";
  static const Pouls =
      "Le pouls représente les battements du cœur par minute et peut fournir des informations sur la fréquence cardiaque.";
  static const Poids =
      "Le poids est la mesure de la masse corporelle d'une personne en kilogrammes.";
  static const IMC =
      "L'indice de masse corporelle (IMC) est un indice utilisé pour évaluer la corpulence d'une personne en fonction de sa taille et de son poids.";
  static const TourTailleFemme =
      "Le tour de taille chez les femmes est une mesure qui peut être utilisée pour évaluer les risques de santé associés à l'accumulation de graisse abdominale.";
  static const TourTailleHomme =
      "Le tour de taille chez les hommes est une mesure qui peut être utilisée pour évaluer les risques de santé associés à l'accumulation de graisse abdominale.";
  static const GlycemieJeun =
      "La glycémie à jeun mesure le taux de sucre dans le sang après une période de jeûne.";
  static const Uricemie =
      "L'uricémie mesure le taux d'acide urique dans le sang.";
  static const Triglycerides =
      "Les triglycérides sont un type de graisse présent dans le sang; souvent évalués pour évaluer les risques cardiaques.";
  static const CholesterolHDL =
      "Le cholestérol HDL (lipoprotéine de haute densité) est souvent appelé « bon » cholestérol et est associé à une meilleure santé cardiaque.";
  static const CholesterolLDL =
      "Le cholestérol LDL (lipoprotéine de basse densité) est souvent appelé « mauvais » cholestérol et peut contribuer aux risques cardiaques.";
  static const CholesterolTotal =
      "Le cholestérol total est la somme du cholestérol HDL; LDL et d'autres composants dans le sang.";
  static const TGO =
      "La TGO (transaminase glutamique oxalacétique) est une enzyme présente dans le foie et d'autres organes.";
  static const TGP =
      "La TGP (transaminase glutamique pyruvique) est une enzyme présente dans le foie et d'autres organes.";
  static const GlycemiePostPrandiale =
      "La glycémie postprandiale mesure le taux de sucre dans le sang après un repas.";
  static const Uree =
      "L'urée est un produit résiduel résultant de la dégradation des protéines dans le corps.";
  static const Creatinine =
      "La créatinine est un produit de dégradation musculaire filtré par les reins; souvent utilisé comme indicateur de la fonction rénale.";
  static const SerologieHIV =
      "La sérologie VIH est un test qui détecte la présence d'anticorps contre le virus de l'immunodéficience humaine (VIH).";
  static const SerologieHepatiteB =
      "La sérologie de l'hépatite B recherche les anticorps et les antigènes associés au virus de l'hépatite B.";
  static const SerologieHepatiteC =
      "La sérologie de l'hépatite C recherche les anticorps et les antigènes associés au virus de l'hépatite C.";
  static const PSATotal =
      "Le PSA (antigène prostatique spécifique) est une protéine produite par la prostate, souvent mesurée pour le dépistage du cancer de la prostate.";
}

String infoAnthropometrique = "Renseigner vos informations anthropométriques";

//chartwidget
String data = "data";

//connexion page
String tasmmHg = "TAS en mmHg";
String tadmmHg = "TAD en mmHg";
String poidsKg = "Poids en kg";
String glycemie = "Glycemie en g/l";
String imcKg = "IMC en Kg/m²";
String uricemie = "Uricemie mg/dl ou µmol/L";
String triglycerides = "Triglycerides en g/l";
String cholesterolHDL = "Cholesterol HDL en g/l";
String cholesterolLDL = "Cholesterol LDL en g/l";
String cholesterolTotal = "Cholesterol total en g/l";
String tgo = "TGO UI/l";
String tgp = "TGP UI/l";
String uree = "Uree";
String creatinine = "Creatinine";
String serologieHIV = "Serologie HIV";
String serologieHepatiteb = "Serologie Hepatite B";
String serologiehepatitec = "Serologie Hepatite C";
String psaTotal = "PSA Total";

class AnthroInfoConstants {
  // Anthropometric info keys
  static const List<String> anthropometricKeys = [
    InputKeys.TAS,
    InputKeys.TAD,
    InputKeys.Pouls,
    InputKeys.Poids,
    InputKeys.Taille,
    InputKeys.IMC,
    InputKeys.TourTailleFemme,
    InputKeys.TourTailleHomme,
    InputKeys.GlycemieJeun,
    InputKeys.Uricemie,
    InputKeys.Triglycerides,
    InputKeys.CholesterolHDL,
    InputKeys.CholesterolLDL,
    InputKeys.CholesterolTotal,
    InputKeys.TGO,
    InputKeys.TGP,
    InputKeys.GlycemiePostPrandiale,
    InputKeys.Uree,
    InputKeys.Creatinine,
    InputKeys.SerologieHIV,
    InputKeys.SerologieHepatiteB,
    InputKeys.SerologieHepatiteC,
    InputKeys.PSATotal,
  ];

  // Descriptions for anthropometric info
  static const Map<String, String> infoDescriptions = {
    InputKeys.Taille: Description.Taille,
    InputKeys.TAS: Description.TAS,
    InputKeys.TAD: Description.TAD,
    InputKeys.Pouls: Description.Pouls,
    InputKeys.Poids: Description.Poids,
    InputKeys.IMC: Description.IMC,
    InputKeys.TourTailleFemme: Description.TourTailleFemme,
    InputKeys.TourTailleHomme: Description.TourTailleHomme,
    InputKeys.GlycemieJeun: Description.GlycemieJeun,
    InputKeys.Uricemie: Description.Uricemie,
    InputKeys.Triglycerides: Description.Triglycerides,
    InputKeys.CholesterolHDL: Description.CholesterolHDL,
    InputKeys.CholesterolLDL: Description.CholesterolLDL,
    InputKeys.CholesterolTotal: Description.CholesterolTotal,
    InputKeys.TGO: Description.TGO,
    InputKeys.TGP: Description.TGP,
    InputKeys.GlycemiePostPrandiale: Description.GlycemiePostPrandiale,
    InputKeys.Uree: Description.Uree,
    InputKeys.Creatinine: Description.Creatinine,
    InputKeys.SerologieHIV: Description.SerologieHIV,
    InputKeys.SerologieHepatiteB: Description.SerologieHepatiteB,
    InputKeys.SerologieHepatiteC: Description.SerologieHepatiteC,
    InputKeys.PSATotal: Description.PSATotal,
  };

  static const String infoAnthropometrique =
      "Renseigner vos informations anthropométriques";
  static const String data = "data";
  static const String connexion = "Se connecter";
  static const String tasmmHg = "TAS en mmHg";
  static const String tadmmHg = "TAD en mmHg";
  static const String poidsKg = "Poids en kg";
  static const String glycemie = "Glycemie en g/l";
  static const String imcKg = "IMC en Kg/m²";
  static const String uricemie = "Uricemie mg/dl ou µmol/L";
  static const String triglycerides = "Triglycerides en g/l";
  static const String cholesterolHDL = "Cholesterol HDL en g/l";
  static const String cholesterolLDL = "Cholesterol LDL en g/l";
  static const String cholesterolTotal = "Cholesterol total en g/l";
  static const String tgo = "TGO UI/l";
  static const String tgp = "TGP UI/l";
  static const String uree = "Uree";
  static const String creatinine = "Creatinine";
  static const String serologieHIV = "Serologie HIV";
  static const String serologieHepatiteb = "Serologie Hepatite B";
  static const String serologiehepatitec = "Serologie Hepatite C";
  static const String psaTotal = "PSA Total";
}
