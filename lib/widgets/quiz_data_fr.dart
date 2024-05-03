import 'package:ecardio/models/quizquestion.dart';

List<QuizQuestionModel> LoadQuizQuestions(String category) {
  List<QuizQuestionModel> loadedQuestions = [];

  if (category == 'Dyslipidemie') {
    loadedQuestions = [
      // Question 1
      QuizQuestionModel(
        question:
            'Quel est le rôle principal du cholestérol LDL dans le corps ?',
        options: [
          'Transporter le cholestérol vers les cellules',
          'Éliminer l’excès de cholestérol du corps',
          'Décomposer le cholestérol en acides biliaires',
          'Stocker le cholestérol dans le foie'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le cholestérol LDL transporte le cholestérol vers les cellules du corps, mais des niveaux élevés de cholestérol LDL peuvent augmenter le risque d’accumulation de plaque dans les artères, conduisant à une maladie cardiaque.',
      ),

      // Question 2
      QuizQuestionModel(
        question:
            'Quelle lipoprotéine est souvent désignée sous le nom de cholestérol "bon" ?',
        options: [
          'Cholestérol LDL',
          'Cholestérol HDL',
          'Cholestérol VLDL',
          'Triglycérides'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le cholestérol HDL est souvent désigné comme le cholestérol "bon" car il aide à éliminer l’excès de cholestérol du sang, réduisant ainsi le risque d’accumulation de plaque dans les artères.',
      ),

      // Question 3
      QuizQuestionModel(
        question:
            'Quelle est la principale source alimentaire des acides gras trans ?',
        options: [
          'Poisson',
          'Viande rouge',
          'Huiles végétales',
          'Aliments transformés'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Les aliments transformés, tels que les snacks emballés, les aliments frits et les produits de boulangerie, sont les principales sources alimentaires des acides gras trans. La consommation d’acides gras trans peut augmenter les niveaux de cholestérol LDL et le risque de maladies cardiaques.',
      ),

      // Question 4
      QuizQuestionModel(
        question:
            'Quel facteur lié au mode de vie suivant peut aider à réduire les niveaux de cholestérol LDL ?',
        options: [
          'Tabagisme',
          'Exercice régulier',
          'Apport élevé en graisses saturées',
          'Comportement sédentaire'
        ],
        correctAnswerIndex: 1,
        explanation:
            'L’exercice régulier peut aider à réduire les niveaux de cholestérol LDL et à augmenter les niveaux de cholestérol HDL. Il favorise également la santé cardiaque en améliorant la circulation sanguine et en réduisant l’inflammation.',
      ),

      // Question 5
      QuizQuestionModel(
        question:
            'Quelle est l’apport journalier maximum recommandé de cholestérol alimentaire pour la plupart des adultes ?',
        options: ['300 mg', '500 mg', '800 mg', '1000 mg'],
        correctAnswerIndex: 0,
        explanation:
            'L’apport journalier maximum recommandé de cholestérol alimentaire pour la plupart des adultes est de 300 mg. Une consommation excessive de cholestérol alimentaire peut augmenter les niveaux de cholestérol LDL et le risque de maladies cardiaques.',
      ),

      // Question 6
      QuizQuestionModel(
        question:
            'Quel type de cholestérol est associé à un risque accru d’athérosclérose et de maladies cardiovasculaires ?',
        options: [
          'Cholestérol HDL',
          'Cholestérol LDL',
          'Cholestérol VLDL',
          'Cholestérol total'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le cholestérol LDL, souvent désigné comme le cholestérol "mauvais", est associé à un risque accru d’athérosclérose et de maladies cardiovasculaires. Des niveaux élevés de cholestérol LDL peuvent entraîner l’accumulation de plaque dans les artères, restreignant le flux sanguin et augmentant le risque d’infarctus du myocarde et d’accident vasculaire cérébral.',
      ),

      // Question 7
      QuizQuestionModel(
        question:
            'Quel effet ont les niveaux élevés de triglycérides sur la santé cardiovasculaire ?',
        options: [
          'Effet protecteur',
          'Aucun effet',
          'Risque accru',
          'Risque diminué'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Des niveaux élevés de triglycérides sont associés à un risque accru de maladies cardiovasculaires. Des niveaux élevés de triglycérides peuvent contribuer au développement de l’athérosclérose et entraîner un infarctus du myocarde et un accident vasculaire cérébral.',
      ),

      // Question 8
      QuizQuestionModel(
        question:
            'Quelle modification du mode de vie est la plus efficace pour réduire les niveaux de cholestérol LDL ?',
        options: [
          'Arrêt du tabac',
          'Changements alimentaires',
          'Gestion du stress',
          'Hygiène du sommeil'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les changements alimentaires, tels que la réduction de la consommation de graisses saturées et d’acides gras trans, l’augmentation de la consommation de fruits, de légumes et de céréales complètes, et l’intégration d’aliments riches en acides gras oméga-3, peuvent être très efficaces pour réduire les niveaux de cholestérol LDL et améliorer la santé cardiaque.',
      ),

      // Question 9
      QuizQuestionModel(
        question:
            'Quel est le rôle des statines dans la prise en charge de la dyslipidémie ?',
        options: [
          'Abaisser les niveaux de cholestérol LDL',
          'Augmenter les niveaux de cholestérol HDL',
          'Réduire les niveaux de triglycérides',
          'Tout ce qui précède'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Les statines sont une classe de médicaments couramment utilisée pour la prise en charge de la dyslipidémie. Elles agissent principalement en abaissant les niveaux de cholestérol LDL dans le sang, ce qui aide à réduire le risque d’événements cardiovasculaires tels que l’infarctus du myocarde et l’accident vasculaire cérébral.',
      ),

// Question 10
      QuizQuestionModel(
        question: 'Qu’est-ce que l’hypercholestérolémie familiale ?',
        options: [
          'Un trouble génétique caractérisé par des niveaux élevés de cholestérol LDL',
          'Une condition causée par une consommation excessive de cholestérol alimentaire',
          'Une maladie auto-immune affectant le métabolisme du cholestérol',
          'Un type de dyslipidémie causé par un mode de vie sédentaire'
        ],
        correctAnswerIndex: 0,
        explanation:
            'L’hypercholestérolémie familiale est un trouble génétique caractérisé par des niveaux élevés de cholestérol LDL dans le sang. Elle est héritée selon un mode dominant autosomique et augmente le risque de maladie cardiovasculaire prématurée.',
      ),

// Question 11
      QuizQuestionModel(
        question:
            'Quelle graisse alimentaire suivante est associée à un risque accru de dyslipidémie ?',
        options: [
          'Acides gras polyinsaturés',
          'Acides gras monoinsaturés',
          'Acides gras saturés',
          'Acides gras trans'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Les acides gras trans, également connus sous le nom d’acides gras trans, sont associés à un risque accru de dyslipidémie. Ils augmentent les niveaux de cholestérol LDL et diminuent les niveaux de cholestérol HDL, augmentant ainsi le risque de maladie cardiaque.',
      ),

// Question 12
      QuizQuestionModel(
        question:
            'Quel effet l’activité physique régulière a-t-elle sur les niveaux de cholestérol ?',
        options: [
          'Augmente les niveaux de cholestérol LDL',
          'Diminue les niveaux de cholestérol HDL',
          'Augmente les niveaux de cholestérol total',
          'Diminue les niveaux de cholestérol LDL et augmente les niveaux de cholestérol HDL'
        ],
        correctAnswerIndex: 3,
        explanation:
            'L’activité physique régulière a un effet bénéfique sur les niveaux de cholestérol. Elle contribue à diminuer les niveaux de cholestérol LDL (le "mauvais" cholestérol) et à augmenter les niveaux de cholestérol HDL (le "bon" cholestérol), ce qui réduit le risque de maladie cardiovasculaire.',
      ),

// Question 13
      QuizQuestionModel(
        question:
            'Quelle modification du mode de vie peut aider à réduire les niveaux de triglycérides ?',
        options: [
          'Cesser de fumer',
          'Consommation accrue d’alcool',
          'Activité physique régulière',
          'Consommation élevée de boissons sucrées'
        ],
        correctAnswerIndex: 2,
        explanation:
            'L’activité physique régulière est une modification du mode de vie efficace pour réduire les niveaux de triglycérides. L’exercice contribue à augmenter la dégradation des triglycérides et à améliorer le métabolisme des lipides, ce qui conduit à des niveaux de triglycérides plus faibles dans le sang.',
      ),

// Question 14
      QuizQuestionModel(
        question:
            'Quel est le rôle des fibres alimentaires dans la prise en charge de la dyslipidémie ?',
        options: [
          'Augmente les niveaux de cholestérol LDL',
          'Diminue les niveaux de cholestérol HDL',
          'Abaisse les niveaux de cholestérol LDL',
          'Aucun effet sur les niveaux de cholestérol'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Les fibres alimentaires aident à abaisser les niveaux de cholestérol LDL en se liant au cholestérol dans le tractus digestif et en favorisant son excrétion du corps. Les aliments riches en fibres solubles, comme l’avoine, les haricots et les fruits, sont particulièrement efficaces pour abaisser les niveaux de cholestérol LDL.',
      ),

// Question 15
      QuizQuestionModel(
        question:
            'Quel est le niveau cible de cholestérol LDL pour les individus à haut risque de maladie cardiovasculaire ?',
        options: [
          'Moins de 100 mg/dL',
          'Moins de 130 mg/dL',
          'Moins de 160 mg/dL',
          'Moins de 200 mg/dL'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le niveau cible de cholestérol LDL pour les individus à haut risque de maladie cardiovasculaire est inférieur à 100 mg/dL. Atteindre et maintenir ce niveau cible peut aider à réduire le risque d’infarctus du myocarde, d’accident vasculaire cérébral et d’autres événements cardiovasculaires.',
      ),

// Question 16
      QuizQuestionModel(
        question:
            'Quelle est la principale source de cholestérol alimentaire ?',
        options: [
          'Viande et volaille',
          'Produits laitiers',
          'Poisson et fruits de mer',
          'Aliments d’origine végétale'
        ],
        correctAnswerIndex: 0,
        explanation:
            'La viande et la volaille sont les principales sources de cholestérol alimentaire. Des aliments tels que le bœuf, le porc et la volaille contiennent du cholestérol, particulièrement dans les parties grasses et la peau. Les aliments d’origine végétale contiennent généralement peu ou pas de cholestérol.',
      ),

// Question 17
      QuizQuestionModel(
        question:
            'Quelle est la fonction principale du cholestérol HDL dans le corps ?',
        options: [
          'Transporter le cholestérol vers les cellules',
          'Éliminer l’excès de cholestérol du sang',
          'Produire du cholestérol dans le foie',
          'Stocker le cholestérol dans les tissus adipeux'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le cholestérol HDL, souvent désigné comme le cholestérol "bon", joue un rôle crucial dans l’élimination de l’excès de cholestérol du sang et dans son transport vers le foie pour son excrétion. Cela aide à prévenir l’accumulation de cholestérol dans les artères, réduisant ainsi le risque de maladie cardiaque.',
      ),

// Question 18
      QuizQuestionModel(
        question:
            'Quel effet le tabagisme a-t-il sur les niveaux de cholestérol ?',
        options: [
          'Augmente les niveaux de cholestérol HDL',
          'Diminue les niveaux de cholestérol LDL',
          'Augmente les niveaux de cholestérol total',
          'Diminue les niveaux de cholestérol HDL'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Le tabagisme diminue les niveaux de cholestérol HDL (le "bon" cholestérol) et augmente les niveaux de cholestérol LDL (le "mauvais" cholestérol), contribuant au développement de l’athérosclérose et des maladies cardiovasculaires. Arrêter de fumer peut aider à améliorer les niveaux de cholestérol et la santé cardiaque globale.',
      ),

// Question 19
      QuizQuestionModel(
        question:
            'Quelle des conditions suivantes est caractérisée par des niveaux élevés de triglycérides et des niveaux bas de cholestérol HDL ?',
        options: [
          'Le syndrome métabolique',
          'L’hypertension',
          'Le diabète de type 1',
          'Le syndrome de Cushing'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le syndrome métabolique est caractérisé par un ensemble de conditions, comprenant des niveaux élevés de triglycérides, des niveaux bas de cholestérol HDL, une obésité abdominale, une hypertension artérielle et une résistance à l’insuline. Les individus atteints du syndrome métabolique présentent un risque accru de maladies cardiovasculaires et de diabète de type 2.',
      ),

// Question 20
      QuizQuestionModel(
        question:
            'Quel effet la consommation d’alcool a-t-elle sur les niveaux de triglycérides ?',
        options: [
          'Augmente les niveaux de triglycérides',
          'Diminue les niveaux de triglycérides',
          'Aucun effet sur les niveaux de triglycérides',
          'Augmente les niveaux de cholestérol HDL'
        ],
        correctAnswerIndex: 0,
        explanation:
            'La consommation d’alcool peut augmenter les niveaux de triglycérides dans le sang. Une consommation excessive d’alcool peut entraîner une élévation des niveaux de triglycérides, associée à un risque accru de maladies cardiovasculaires. La modération est essentielle pour maintenir la santé cardiaque lors de la consommation d’alcool.',
      ),

// Question 21
      QuizQuestionModel(
        question:
            'Quels des facteurs suivants peuvent contribuer à la dyslipidémie ?',
        options: [
          'Génétique',
          'Régime alimentaire',
          'Niveaux d’activité physique',
          'Tout ce qui précède'
        ],
        correctAnswerIndex: 3,
        explanation:
            'La dyslipidémie peut être influencée par divers facteurs, notamment la génétique, le régime alimentaire, les niveaux d’activité physique et les habitudes de vie. La prédisposition génétique, les choix alimentaires riches en graisses saturées et en acides gras trans, le comportement sédentaire et d’autres facteurs de mode de vie peuvent contribuer à la dyslipidémie et augmenter le risque de maladies cardiovasculaires.',
      ),

// Question 22
      QuizQuestionModel(
        question:
            'Quel effet le stress a-t-il sur les niveaux de cholestérol ?',
        options: [
          'Augmente les niveaux de cholestérol HDL',
          'Diminue les niveaux de cholestérol LDL',
          'Augmente les niveaux de triglycérides',
          'Diminue les niveaux de cholestérol total'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Le stress peut augmenter les niveaux de triglycérides dans le sang. Le stress chronique active la réponse "combat ou fuite" du corps, entraînant la libération d’hormones de stress comme le cortisol, qui peuvent élever les niveaux de triglycérides. La gestion du stress par des techniques de relaxation et des stratégies d’adaptation est importante pour maintenir la santé cardiaque.',
      ),

// Question 23
      QuizQuestionModel(
        question:
            'Quel effet les acides gras oméga-3 ont-ils sur les niveaux de cholestérol ?',
        options: [
          'Augmente les niveaux de cholestérol LDL',
          'Diminue les niveaux de cholestérol HDL',
          'Augmente les niveaux de triglycérides',
          'Diminue les niveaux de triglycérides'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Les acides gras oméga-3, présents dans les poissons gras, les graines de lin et les noix, ont été démontrés pour diminuer les niveaux de triglycérides dans le sang. La consommation d’acides gras oméga-3 dans le cadre d’un régime alimentaire sain peut aider à réduire les niveaux de triglycérides et à réduire le risque de maladies cardiovasculaires.',
      ),

// Question 24
      QuizQuestionModel(
        question:
            'Quel effet la perte de poids a-t-elle sur les niveaux de cholestérol ?',
        options: [
          'Augmente les niveaux de cholestérol LDL',
          'Diminue les niveaux de cholestérol HDL',
          'Augmente les niveaux de triglycérides',
          'Améliore les niveaux de cholestérol'
        ],
        correctAnswerIndex: 3,
        explanation:
            'La perte de poids peut améliorer les niveaux de cholestérol en diminuant les niveaux de cholestérol LDL (le "mauvais" cholestérol), en augmentant les niveaux de cholestérol HDL (le "bon" cholestérol) et en diminuant les niveaux de triglycérides. Atteindre et maintenir un poids santé grâce à un régime alimentaire équilibré et de l’exercice est essentiel pour la santé cardiaque globale.',
      ),

// Question 25
      QuizQuestionModel(
        question:
            'Quelle est la principale source alimentaire de graisses saturées ?',
        options: ['Huile d’olive', 'Avocat', 'Beurre', 'Noix et graines'],
        correctAnswerIndex: 2,
        explanation:
            'Le beurre est la principale source alimentaire de graisses saturées. Les graisses saturées se trouvent dans les produits animaux tels que le beurre, le fromage et les viandes grasses, ainsi que dans certaines huiles végétales comme l’huile de coco et l’huile de palme. Consommer des quantités excessives de graisses saturées peut augmenter les niveaux de cholestérol LDL et le risque de maladie cardiaque.',
      ),

// Question 26
      QuizQuestionModel(
        question:
            'Quel effet le cholestérol alimentaire a-t-il sur les niveaux de cholestérol sanguin ?',
        options: [
          'Augmente les niveaux de cholestérol LDL',
          'Diminue les niveaux de cholestérol HDL',
          'Augmente les niveaux de triglycérides',
          'Aucun effet significatif'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le cholestérol alimentaire peut augmenter les niveaux de cholestérol LDL chez certaines personnes, en particulier chez celles qui sont sensibles à l’apport alimentaire de cholestérol. Cependant, l’impact du cholestérol alimentaire sur les niveaux de cholestérol sanguin varie d’une personne à l’autre, et d’autres facteurs tels que la génétique et le régime alimentaire global jouent également un rôle.',
      ),

// Question 27
      QuizQuestionModel(
        question:
            'Quel est le rôle des acides biliaires dans le métabolisme du cholestérol ?',
        options: [
          'Transporter le cholestérol vers les cellules',
          'Décomposer le cholestérol dans le foie',
          'Éliminer le cholestérol du sang',
          'Stocker le cholestérol excédentaire dans les tissus adipeux'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les acides biliaires, produits dans le foie à partir du cholestérol, jouent un rôle crucial dans le métabolisme du cholestérol en émulsifiant les graisses alimentaires et en facilitant leur absorption dans l’intestin. Les acides biliaires aident également à la digestion et à l’absorption des vitamines liposolubles et aident à éliminer l’excès de cholestérol du corps.',
      ),

// Question 28
      QuizQuestionModel(
        question:
            'Quel effet un régime riche en aliments transformés a-t-il sur les niveaux de cholestérol ?',
        options: [
          'Augmente les niveaux de cholestérol HDL',
          'Diminue les niveaux de cholestérol LDL',
          'Augmente les niveaux de triglycérides',
          'Aucun effet sur les niveaux de cholestérol'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Un régime riche en aliments transformés peut augmenter les niveaux de triglycérides dans le sang. Les aliments transformés sont souvent riches en sucres ajoutés, en graisses saturées et en acides gras trans, qui peuvent contribuer à une augmentation des niveaux de triglycérides et à un risque accru de maladies cardiovasculaires.',
      ),

// Question 29
      QuizQuestionModel(
        question:
            'Quelle est la principale source d’acides gras trans dans l’alimentation ?',
        options: [
          'Produits laitiers',
          'Huiles végétales',
          'Viandes et volailles',
          'Aliments transformés'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Les aliments transformés sont la principale source d’acides gras trans dans l’alimentation. Les acides gras trans sont produits industriellement lors de la transformation des huiles végétales en graisses solides à travers un processus appelé hydrogénation partielle. Les aliments transformés contiennent souvent des acides gras trans ajoutés pour améliorer la texture, la durée de conservation et la saveur.',
      ),

// Question 30
      QuizQuestionModel(
        question:
            'Quel effet la consommation excessive de sucre ajouté a-t-elle sur les niveaux de triglycérides ?',
        options: [
          'Diminue les niveaux de triglycérides',
          'Augmente les niveaux de triglycérides',
          'Aucun effet sur les niveaux de triglycérides',
          'Diminue les niveaux de cholestérol LDL'
        ],
        correctAnswerIndex: 1,
        explanation:
            'La consommation excessive de sucre ajouté peut augmenter les niveaux de triglycérides dans le sang. Les sucres ajoutés, tels que le saccharose et le sirop de maïs à haute teneur en fructose, sont métabolisés par le foie et peuvent être convertis en triglycérides. Une consommation élevée de sucre ajouté peut contribuer à une élévation des niveaux de triglycérides, augmentant ainsi le risque de maladies cardiovasculaires.',
      ),
    ];
  } else if (category == 'Obésité') {
    loadedQuestions = [
      // Question 1
      QuizQuestionModel(
        question: 'Quelle est la plage de BMI considérée comme obèse ?',
        options: [
          'BMI inférieur à 18,5',
          'BMI entre 18,5 et 24,9',
          'BMI entre 25 et 29,9',
          'BMI supérieur ou égal à 30'
        ],
        correctAnswerIndex: 3,
        explanation:
            'L\'obésité est définie comme ayant un BMI (indice de masse corporelle) supérieur ou égal à 30. Le BMI est calculé en divisant le poids d\'une personne en kilogrammes par le carré de sa taille en mètres.',
      ),

      // Question 2
      QuizQuestionModel(
        question:
            'Quels des facteurs suivants contribuent au développement de l\'obésité ?',
        options: [
          'Génétique',
          'Niveaux d\'activité physique',
          'Habitudes alimentaires',
          'Tous les éléments ci-dessus'
        ],
        correctAnswerIndex: 3,
        explanation:
            'L\'obésité peut résulter d\'une combinaison de facteurs génétiques, environnementaux et comportementaux. Bien que la génétique puisse prédisposer les individus à l\'obésité, des facteurs liés au mode de vie tels que l\'alimentation et les niveaux d\'activité physique jouent également des rôles significatifs dans son développement.',
      ),

      // Question 3
      QuizQuestionModel(
        question: 'Quelles conditions de santé sont associées à l\'obésité ?',
        options: [
          'Diabète de type 2',
          'Hypertension',
          'Maladie cardiaque',
          'Tous les éléments ci-dessus'
        ],
        correctAnswerIndex: 3,
        explanation:
            'L\'obésité est associée à un risque accru de diverses conditions de santé, notamment le diabète de type 2, l\'hypertension artérielle, les maladies cardiaques, les accidents vasculaires cérébraux, certains cancers et l\'apnée du sommeil. La gestion du poids par des modifications du mode de vie est essentielle pour réduire le risque de complications liées à l\'obésité.',
      ),

      // Question 4
      QuizQuestionModel(
        question:
            'Quel rôle joue l\'activité physique dans la prévention de l\'obésité ?',
        options: [
          'Augmente l\'appétit et favorise la prise de poids',
          'Réduit la masse musculaire et augmente la masse grasse',
          'Brûle des calories et aide à maintenir un poids santé',
          'N\'a aucun effet sur le poids corporel'
        ],
        correctAnswerIndex: 2,
        explanation:
            'L\'activité physique joue un rôle crucial dans la prévention de l\'obésité en brûlant des calories et en aidant à maintenir un poids santé. L\'exercice régulier peut également améliorer la santé cardiovasculaire, renforcer les muscles et stimuler le métabolisme, contribuant au bien-être général.',
      ),

      // Question 5
      QuizQuestionModel(
        question:
            'Comment un régime riche en fibres contribue-t-il à la gestion du poids ?',
        options: [
          'Augmente l\'apport calorique',
          'Favorise le stockage des graisses',
          'Aide à contrôler l\'appétit et favorise la perte de poids',
          'Cause de la prise de poids'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Un régime riche en fibres aide à contrôler l\'appétit et favorise la perte de poids en favorisant la sensation de satiété et en réduisant l\'apport calorique. Les aliments riches en fibres, tels que les fruits, les légumes, les céréales complètes et les légumineuses, sont faibles en calories et fournissent des nutriments essentiels, ce qui les rend précieux pour la gestion du poids.',
      ),

      // Question 6
      QuizQuestionModel(
        question:
            'Quel est le taux de perte de poids recommandé pour les personnes obèses ?',
        options: [
          '1 à 2 livres par semaine',
          '3 à 5 livres par semaine',
          'Plus de 5 livres par semaine',
          'La perte de poids n\'est pas recommandée'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le taux de perte de poids recommandé pour les personnes obèses est de 1 à 2 livres par semaine. Une perte de poids rapide peut être insoutenable et peut entraîner une perte musculaire, des carences nutritionnelles et d\'autres complications de santé. Une perte de poids graduelle grâce à des changements de mode de vie sains est plus efficace et durable à long terme.',
      ),

      // Question 7
      QuizQuestionModel(
        question: 'Quel rôle joue le sommeil dans l\'obésité ?',
        options: [
          'Augmente le métabolisme et favorise la perte de poids',
          'Réduit l\'appétit et favorise la prise de poids',
          'N\'a aucun effet sur le poids corporel',
          'Conduit à la perte de muscle et au gain de graisse'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Un sommeil inadéquat peut perturber les hormones qui régulent l\'appétit, entraînant une augmentation de la faim et des envies, ce qui peut contribuer à la prise de poids et à l\'obésité. Obtenir suffisamment de sommeil est essentiel pour la santé globale et la gestion du poids.',
      ),

      // Question 8
      QuizQuestionModel(
        question:
            'Quel type de graisse est le plus susceptible de contribuer à l\'obésité ?',
        options: [
          'Graisse saturée',
          'Graisse trans',
          'Graisse monoinsaturée',
          'Graisse polyinsaturée'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les graisses trans sont plus susceptibles de contribuer à l\'obésité et à d\'autres problèmes de santé par rapport à d\'autres types de graisses. Les graisses trans se trouvent souvent dans les aliments transformés et frits, les produits de boulangerie et la margarine. La consommation excessive de graisses trans est associée à un risque accru de maladies cardiovasculaires et d\'autres problèmes de santé.',
      ),

      // Question 9
      QuizQuestionModel(
        question:
            'Comment les boissons sucrées contribuent-elles à l\'obésité ?',
        options: [
          'Augmentent la sensation de satiété',
          'Fournissent des nutriments essentiels',
          'Contribuent à l\'apport calorique sans satiété',
          'N\'ont aucun effet sur le poids corporel'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Les boissons sucrées, telles que les sodas et les boissons énergisantes, contribuent à l\'obésité en fournissant des calories sans favoriser la satiété. Ces boissons contiennent souvent des quantités élevées de sucre ajouté, ce qui peut entraîner une prise de poids excessive lorsqu\'elles sont consommées régulièrement sans compensation par une activité physique adéquate.',
      ),

      // Question 10
      QuizQuestionModel(
        question:
            'Quelles sont les options alimentaires saines pour la gestion du poids ?',
        options: [
          'Aliments riches en sucre et en gras',
          'Aliments riches en fibres et en protéines',
          'Aliments transformés et frits',
          'Aliments riches en calories et en glucides simples'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les aliments riches en fibres et en protéines sont des choix sains pour la gestion du poids car ils favorisent la satiété, contrôlent l\'appétit et fournissent des nutriments essentiels avec moins de calories par rapport aux aliments riches en sucre et en gras. Les fruits, les légumes, les céréales complètes, les protéines maigres et les produits laitiers faibles en gras sont des exemples d\'aliments recommandés pour la gestion du poids.',
      ),
// Question 11
      QuizQuestionModel(
        question:
            'Quel est l\'impact de la consommation excessive de sel sur la santé ?',
        options: [
          'Réduit le risque de maladies cardiaques',
          'Augmente la pression artérielle et le risque de maladies cardiovasculaires',
          'Favorise la perte de poids',
          'N\'a aucun effet sur la santé'
        ],
        correctAnswerIndex: 1,
        explanation:
            'La consommation excessive de sel augmente la pression artérielle et le risque de maladies cardiovasculaires, y compris les accidents vasculaires cérébraux et les maladies cardiaques. Réduire la consommation de sel peut aider à maintenir une pression artérielle saine et à prévenir les complications de santé associées.',
      ),

      // Question 12
      QuizQuestionModel(
        question: 'Quel est le rôle des calories dans la gestion du poids ?',
        options: [
          'Les calories ne sont pas importantes pour la gestion du poids',
          'Les calories sont stockées sous forme de graisse dans le corps',
          'Il est important de surveiller l\'apport calorique pour maintenir un poids santé',
          'Plus de calories consommées signifie automatiquement un gain de poids'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Il est important de surveiller l\'apport calorique pour maintenir un poids santé, car un excès de calories peut entraîner un gain de poids. Les calories sont une mesure de l\'énergie fournie par les aliments et les boissons. Pour maintenir le poids corporel, l\'équilibre entre les calories consommées et les calories dépensées est crucial.',
      ),

      // Question 13
      QuizQuestionModel(
        question: 'Quel est l\'effet du stress sur le poids corporel ?',
        options: [
          'Le stress réduit l\'appétit et favorise la perte de poids',
          'Le stress augmente la faim et peut conduire à une prise de poids',
          'Le stress n\'a aucun effet sur le poids corporel',
          'Le stress est directement lié à la combustion des graisses'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le stress augmente la faim et peut conduire à une prise de poids en déclenchant des envies d\'aliments riches en calories. De plus, le stress chronique peut perturber les hormones qui régulent le poids et le métabolisme, ce qui peut entraîner un gain de poids à long terme.',
      ),

      // Question 14
      QuizQuestionModel(
        question:
            'Quelle est l\'importance de la régularité des repas dans la gestion du poids ?',
        options: [
          'Sauter des repas régulièrement favorise la perte de poids',
          'La régularité des repas aide à stabiliser la glycémie et à contrôler l\'appétit',
          'La régularité des repas n\'a aucun effet sur le poids corporel',
          'Manger à des heures aléatoires est bénéfique pour la perte de poids'
        ],
        correctAnswerIndex: 1,
        explanation:
            'La régularité des repas aide à stabiliser la glycémie et à contrôler l\'appétit, ce qui peut contribuer à la gestion du poids. Manger à des heures régulières aide également à maintenir un métabolisme sain et à éviter les fringales incontrôlées, ce qui peut entraîner une suralimentation et un gain de poids.',
      ),

      // Question 15
      QuizQuestionModel(
        question:
            'Quel est le rôle de l\'hydratation dans la gestion du poids ?',
        options: [
          'L\'hydratation n\'a aucun effet sur le poids corporel',
          'Boire beaucoup d\'eau peut favoriser la rétention d\'eau et entraîner un gain de poids',
          'L\'eau potable peut aider à réduire l\'appétit et à favoriser la perte de poids',
          'La déshydratation entraîne une augmentation du métabolisme et une perte de poids'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Boire beaucoup d\'eau peut aider à réduire l\'appétit et à favoriser la perte de poids en augmentant la sensation de satiété et en remplaçant les boissons riches en calories. De plus, l\'eau potable est essentielle pour de nombreuses fonctions corporelles, y compris le métabolisme des graisses.',
      ),

      // Question 16
      QuizQuestionModel(
        question:
            'Comment la perception de soi peut-elle affecter le poids corporel ?',
        options: [
          'Une perception de soi positive favorise la perte de poids',
          'Une perception de soi négative peut entraîner des comportements alimentaires malsains et un gain de poids',
          'La perception de soi n\'a aucun lien avec le poids corporel',
          'La perception de soi affecte uniquement la musculation'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Une perception de soi négative peut entraîner des comportements alimentaires malsains et un gain de poids en favorisant l\'utilisation de la nourriture comme mécanisme d\'adaptation au stress émotionnel. Des troubles de l\'alimentation tels que la boulimie et la compulsion alimentaire peuvent résulter d\'une image corporelle négative.',
      ),

      // Question 17
      QuizQuestionModel(
        question:
            'Quel est le rôle des portions alimentaires dans la gestion du poids ?',
        options: [
          'Plus les portions sont grandes, mieux c\'est pour la perte de poids',
          'Le contrôle des portions aide à réguler l\'apport calorique et favorise la gestion du poids',
          'La taille des portions n\'a aucun effet sur le poids corporel',
          'Manger de grandes portions régulièrement brûle plus de calories'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le contrôle des portions aide à réguler l\'apport calorique et favorise la gestion du poids en évitant la suralimentation. Manger des portions adaptées à ses besoins énergétiques peut aider à maintenir un équilibre calorique sain et à prévenir la prise de poids non désirée.',
      ),

      // Question 18
      QuizQuestionModel(
        question:
            'Quel est l\'impact des habitudes alimentaires familiales sur le poids des enfants ?',
        options: [
          'Les habitudes alimentaires familiales n\'ont aucun effet sur le poids des enfants',
          'Des habitudes alimentaires familiales saines peuvent aider à promouvoir un poids santé chez les enfants',
          'Les habitudes alimentaires familiales sont uniquement liées à la génétique',
          'Les enfants sont influencés uniquement par leurs pairs, pas par leurs parents'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Des habitudes alimentaires familiales saines peuvent aider à promouvoir un poids santé chez les enfants en établissant des modèles alimentaires sains et en fournissant des aliments nutritifs. Les parents jouent un rôle crucial dans la création d\'un environnement alimentaire favorable à la santé pour leurs enfants.',
      ),

      // Question 19
      QuizQuestionModel(
        question:
            'Quels sont les avantages de la pratique régulière de l\'activité physique pour la gestion du poids ?',
        options: [
          'L\'activité physique n\'a aucun effet sur le poids corporel',
          'La pratique régulière de l\'activité physique peut aider à brûler des calories, à renforcer les muscles et à favoriser la perte de poids',
          'L\'activité physique entraîne une augmentation de l\'appétit, ce qui peut entraîner une prise de poids',
          'La perte de poids dépend uniquement de la restriction calorique, pas de l\'activité physique'
        ],
        correctAnswerIndex: 1,
        explanation:
            'La pratique régulière de l\'activité physique peut aider à brûler des calories, à renforcer les muscles et à favoriser la perte de poids en créant un déficit calorique. L\'exercice régulier est également bénéfique pour la santé cardiovasculaire, la santé mentale et le bien-être général.',
      ),

      // Question 20
      QuizQuestionModel(
        question:
            'Quel est l\'effet du manque de sommeil sur le poids corporel ?',
        options: [
          'Le manque de sommeil favorise la perte de poids en augmentant le métabolisme',
          'Le manque de sommeil augmente la faim et peut entraîner une prise de poids',
          'Le sommeil n\'a aucun effet sur le poids corporel',
          'Le manque de sommeil diminue l\'appétit, ce qui entraîne une perte de poids'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le manque de sommeil augmente la faim et peut entraîner une prise de poids en perturbant les hormones qui régulent l\'appétit. De plus, le manque de sommeil peut entraîner une diminution de la motivation pour l\'exercice et des choix alimentaires moins sains, ce qui peut contribuer à un gain de poids.',
      ),

      // Question 21
      QuizQuestionModel(
        question: 'Qu\'est-ce que l\'indice de masse corporelle (IMC) mesure ?',
        options: [
          'La quantité de graisse dans le corps',
          'Le pourcentage de muscle dans le corps',
          'La densité osseuse',
          'La relation entre la taille et le poids'
        ],
        correctAnswerIndex: 3,
        explanation:
            'L\'indice de masse corporelle (IMC) mesure la relation entre la taille et le poids d\'une personne pour estimer la quantité de graisse corporelle. Il est largement utilisé comme outil de dépistage pour évaluer le risque de problèmes de santé liés au poids, tels que l\'obésité et les maladies cardiovasculaires.',
      ),

      // Question 22
      QuizQuestionModel(
        question:
            'Quelle est la différence entre les graisses saturées et les graisses insaturées ?',
        options: [
          'Les graisses saturées sont solides à température ambiante, tandis que les graisses insaturées sont liquides',
          'Les graisses saturées sont plus saines que les graisses insaturées',
          'Les graisses insaturées sont d\'origine animale, tandis que les graisses saturées sont d\'origine végétale',
          'Il n\'y a pas de différence significative entre les deux types de graisses'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Les graisses saturées sont solides à température ambiante, tandis que les graisses insaturées sont liquides. Les graisses saturées sont principalement d\'origine animale et sont associées à un risque accru de maladies cardiovasculaires. Les graisses insaturées, en particulier les acides gras insaturés monoinsaturés et polyinsaturés, sont considérées comme plus saines et se trouvent généralement dans les sources végétales et les poissons gras.',
      ),

      // Question 23
      QuizQuestionModel(
        question: 'Qu\'est-ce qu\'un régime alimentaire équilibré ?',
        options: [
          'Un régime qui exclut complètement certains groupes alimentaires',
          'Un régime basé uniquement sur des aliments faibles en gras',
          'Un régime qui comprend une variété d\'aliments nutritifs des différents groupes alimentaires',
          'Un régime riche en aliments transformés et sucrés'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Un régime alimentaire équilibré est un régime qui comprend une variété d\'aliments nutritifs des différents groupes alimentaires, y compris des fruits, des légumes, des céréales complètes, des protéines maigres et des produits laitiers faibles en gras. Il est important de consommer une gamme d\'aliments pour obtenir tous les nutriments nécessaires à une bonne santé.',
      ),

      // Question 24
      QuizQuestionModel(
        question:
            'Quels sont les effets néfastes d\'une alimentation riche en sucre ajouté ?',
        options: [
          'Améliore la santé dentaire',
          'Augmente le risque de diabète de type 2 et de prise de poids',
          'Réduit le risque de maladies cardiovasculaires',
          'Aucun effet sur la santé'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Une alimentation riche en sucre ajouté augmente le risque de diabète de type 2, de prise de poids et de maladies cardiovasculaires. La consommation excessive de sucre ajouté est associée à une variété de problèmes de santé, y compris l\'obésité, la carie dentaire et les maladies métaboliques.',
      ),

      // Question 25
      QuizQuestionModel(
        question:
            'Qu\'est-ce qu\'un régime alimentaire riche en fibres peut aider à prévenir ?',
        options: [
          'Constipation',
          'Hypertension artérielle',
          'Maladies cardiaques',
          'Maladie d\'Alzheimer'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Un régime alimentaire riche en fibres peut aider à prévenir la constipation en favorisant le transit intestinal régulier et en augmentant le volume des selles. Les aliments riches en fibres, tels que les fruits, les légumes, les céréales complètes, les légumineuses et les noix, sont essentiels pour maintenir la santé digestive.',
      ),

      // Question 26
      QuizQuestionModel(
        question:
            'Quelle est la fonction principale des protéines dans le corps ?',
        options: [
          'Fournir de l\'énergie',
          'Favoriser la régulation de la glycémie',
          'Construire et réparer les tissus',
          'Stocker les vitamines et les minéraux'
        ],
        correctAnswerIndex: 2,
        explanation:
            'La fonction principale des protéines dans le corps est de construire et de réparer les tissus. Les protéines sont essentielles pour la croissance, le développement et la réparation des cellules et des tissus, y compris les muscles, la peau, les cheveux et les ongles. Elles sont composées d\'acides aminés, qui sont les éléments constitutifs de base des protéines.',
      ),

      // Question 27
      QuizQuestionModel(
        question:
            'Quels sont les effets d\'une consommation excessive de graisses saturées sur la santé ?',
        options: [
          'Réduit le risque de maladies cardiaques',
          'Augmente le taux de cholestérol sanguin et le risque de maladies cardiovasculaires',
          'Favorise la perte de poids',
          'N\'a aucun effet sur la santé'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Une consommation excessive de graisses saturées augmente le taux de cholestérol sanguin et le risque de maladies cardiovasculaires, y compris les maladies coronariennes et les accidents vasculaires cérébraux. Les graisses saturées se trouvent principalement dans les produits d\'origine animale et les aliments transformés riches en graisses.',
      ),

      // Question 28
      QuizQuestionModel(
        question:
            'Qu\'est-ce que le cholestérol et quel est son rôle dans le corps ?',
        options: [
          'Une hormone qui régule le métabolisme',
          'Un nutriment essentiel pour la fonction cérébrale',
          'Un type de sucre qui fournit de l\'énergie',
          'Une substance semblable à la cire nécessaire à la formation des membranes cellulaires et à la production d\'hormones'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Le cholestérol est une substance semblable à la cire nécessaire à la formation des membranes cellulaires et à la production d\'hormones, y compris la vitamine D, les hormones stéroïdes et les acides biliaires qui aident à digérer les graisses. Bien que le cholestérol soit essentiel pour de nombreuses fonctions corporelles, des niveaux élevés de cholestérol dans le sang peuvent augmenter le risque de maladies cardiovasculaires.',
      ),

      // Question 29
      QuizQuestionModel(
        question: 'Quel est l\'effet des régimes yo-yo sur la santé ?',
        options: [
          'Améliore la santé métabolique',
          'Augmente le risque de prise de poids à long terme et de problèmes de santé',
          'Stabilise le poids corporel à long terme',
          'N\'a aucun effet sur la santé'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les régimes yo-yo augmentent le risque de prise de poids à long terme et de problèmes de santé en perturbant le métabolisme et en favorisant un cycle de perte et de reprise de poids. Les fluctuations de poids fréquentes peuvent être néfastes pour la santé cardiovasculaire, le contrôle de la glycémie et le bien-être émotionnel.',
      ),

      // Question 30
      QuizQuestionModel(
        question: 'Quel est l\'effet de la caféine sur le corps ?',
        options: [
          'Améliore la qualité du sommeil',
          'Stimule le système nerveux central et peut augmenter l\'énergie et la vigilance',
          'Diminue la pression artérielle',
          'Aucun effet sur le corps'
        ],
        correctAnswerIndex: 1,
        explanation:
            'La caféine stimule le système nerveux central et peut augmenter l\'énergie et la vigilance en bloquant l\'action de l\'adénosine, un neurotransmetteur qui favorise la relaxation et le sommeil. La caféine est couramment consommée sous forme de café, de thé, de boissons énergisantes et de certains médicaments en vente libre.',
      ),

// Question 31
      QuizQuestionModel(
        question:
            'Quel groupe de population a la prévalence la plus élevée de l\'obésité aux États-Unis ?',
        options: [
          'Enfants âgés de 2 à 5 ans',
          'Adolescents âgés de 12 à 19 ans',
          'Adultes âgés de 20 à 39 ans',
          'Adultes âgés de 40 à 59 ans'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Parmi les adultes aux États-Unis, ceux âgés de 40 à 59 ans ont la prévalence la plus élevée de l\'obésité. Les taux d\'obésité ont tendance à augmenter avec l\'âge, atteignant un pic à l\'âge adulte moyen avant de diminuer progressivement dans les groupes plus âgés. Cependant, l\'obésité reste un problème de santé publique important dans tous les groupes d\'âge, avec des implications pour le risque de maladies chroniques, les coûts des soins de santé et le bien-être général.',
      ),

      // Question 32
      QuizQuestionModel(
        question:
            'Quel est l\'impact de l\'influence parentale sur l\'obésité infantile ?',
        options: [
          'Les parents n\'ont aucune influence sur les comportements alimentaires des enfants',
          'La modélisation par les parents de comportements sains réduit le risque d\'obésité',
          'Les pratiques alimentaires des parents n\'ont aucun impact sur le poids des enfants',
          'Les parents jouent un rôle dans la formation des habitudes alimentaires et des choix de mode de vie des enfants'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Les parents jouent un rôle essentiel dans la formation des habitudes alimentaires, des niveaux d\'activité physique et des choix de mode de vie des enfants, ce qui peut influencer considérablement le risque d\'obésité et les résultats de santé à long terme. La modélisation de comportements sains, la fourniture de repas et de collations nutritifs, l\'encouragement à l\'activité physique et la création d\'environnements domestiques favorables sont essentiels pour promouvoir un développement pondéral sain et prévenir l\'obésité infantile.',
      ),

      // Question 33
      QuizQuestionModel(
        question:
            'Quel est l\'impact de l\'allaitement maternel sur le risque d\'obésité ?',
        options: [
          'L\'allaitement maternel n\'a aucun effet sur le risque d\'obésité',
          'L\'allaitement maternel réduit le risque d\'obésité infantile',
          'L\'allaitement au biberon est associé à un risque d\'obésité plus faible',
          'L\'allaitement maternel augmente le risque d\'obésité infantile'
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'allaitement maternel a été démontré pour réduire le risque d\'obésité infantile en favorisant une croissance saine, en fournissant une nutrition optimale et en soutenant le développement des systèmes métaboliques et immunitaires. Le lait maternel contient une combinaison unique de nutriments, de composés bioactifs et d\'anticorps qui aident à protéger contre les infections et les maladies chroniques tout en favorisant une prise de poids et un développement optimaux chez les nourrissons et les jeunes enfants.',
      ),

      // Question 34
      QuizQuestionModel(
        question:
            'Quel est l\'impact du marketing alimentaire sur l\'obésité infantile ?',
        options: [
          'N\'a aucune influence sur les comportements alimentaires',
          'Encourage la consommation d\'aliments sains',
          'Promeut la consommation d\'aliments et de boissons malsains',
          'Augmente la sensibilisation aux stratégies de prévention de l\'obésité'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Le marketing alimentaire, en particulier pour les produits malsains riches en sucre, en sel et en matières grasses, peut influencer les comportements alimentaires, les préférences alimentaires et les habitudes de consommation des enfants. L\'exposition au marketing d\'aliments et de boissons malsains à travers la télévision, les médias numériques, l\'emballage des produits et les activités promotionnelles peut contribuer à la surconsommation, aux mauvaises habitudes alimentaires et à un risque accru d\'obésité et de problèmes de santé connexes chez les enfants et les adolescents.',
      ),

      // Question 35
      QuizQuestionModel(
        question:
            'Quel est l\'impact des programmes de nutrition scolaire sur l\'obésité infantile ?',
        options: [
          'N\'a aucun effet sur les taux d\'obésité',
          'Favorise de saines habitudes alimentaires et réduit le risque d\'obésité',
          'Augmente la consommation d\'aliments malsains',
          'Contribue à la prise de poids chez les enfants'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les programmes de nutrition scolaire, tels que les repas scolaires et les initiatives d\'éducation nutritionnelle, jouent un rôle crucial dans la promotion de saines habitudes alimentaires, l\'amélioration de la qualité nutritionnelle et la réduction du risque d\'obésité chez les enfants et les adolescents. Ces programmes fournissent un accès à des repas nutritifs, enseignent des compétences nutritionnelles essentielles et créent des environnements favorables qui encouragent des choix alimentaires et des comportements sains tant à l\'école qu\'au-delà.',
      ),

      // Question 36
      QuizQuestionModel(
        question:
            'Quel est l\'impact du temps d\'écran sur le risque d\'obésité ?',
        options: [
          'N\'a aucun effet sur le poids corporel',
          'Une augmentation du temps d\'écran est associée à un risque d\'obésité plus faible',
          'Une réduction du temps d\'écran est associée à un risque d\'obésité plus élevé',
          'Un temps d\'écran excessif est lié à une augmentation du risque d\'obésité'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Un temps d\'écran excessif, en particulier des activités sédentaires telles que regarder la télévision, utiliser des ordinateurs, jouer à des jeux vidéo et utiliser des smartphones ou des tablettes, est associé à un risque accru d\'obésité chez les enfants et les adolescents. Le temps d\'écran remplace souvent l\'activité physique, favorise les comportements sédentaires, augmente l\'exposition à la publicité alimentaire et perturbe les habitudes de sommeil, ce qui peut contribuer à une prise de poids et à l\'obésité au fil du temps.',
      ),

      // Question 37
      QuizQuestionModel(
        question:
            'Quel est l\'impact de la consommation de fast-food sur l\'obésité ?',
        options: [
          'La consommation de fast-food n\'a aucun effet sur le poids corporel',
          'La consommation de fast-food est associée à un risque d\'obésité plus faible',
          'Une consommation fréquente de fast-food est liée à un risque d\'obésité plus élevé',
          'La consommation de fast-food n\'affecte que les adultes, pas les enfants'
        ],
        correctAnswerIndex: 2,
        explanation:
            'La consommation fréquente de fast-food, qui est souvent riche en calories, en graisses malsaines, en sel et en sucre, est associée à un risque accru d\'obésité et à une mauvaise qualité nutritionnelle chez les enfants, les adolescents et les adultes. Les repas de fast-food ont tendance à être énergétiquement denses et pauvres en nutriments, fournissant des calories excessives sans nutriments essentiels, ce qui peut contribuer à une prise de poids, à l\'obésité et à des problèmes de santé connexes au fil du temps.',
      ),

      // Question 38
      QuizQuestionModel(
        question:
            'Quel est l\'impact de la conception communautaire sur les taux d\'obésité ?',
        options: [
          'N\'a aucun effet sur le risque d\'obésité',
          'Les communautés favorables aux piétons favorisent l\'activité physique et réduisent le risque d\'obésité',
          'Les communautés dépendantes de la voiture ont des taux d\'obésité plus faibles',
          'La conception communautaire n\'influence pas les niveaux d\'activité physique'
        ],
        correctAnswerIndex: 1,
        explanation:
            'La conception communautaire joue un rôle significatif dans la formation des niveaux d\'activité physique, les choix de transport et les taux d\'obésité parmi les résidents. Les communautés favorables aux piétons, avec des trottoirs accessibles, des pistes cyclables, des parcs, des installations récréatives et des utilisations mixtes des terres, favorisent une vie active, encouragent la marche et le vélo, et soutiennent des modes de vie sains. En revanche, les communautés dépendantes de la voiture, avec une infrastructure limitée pour les transports actifs, peuvent avoir des taux plus élevés de comportements sédentaires, d\'obésité et de maladies chroniques.',
      ),

      // Question 39
      QuizQuestionModel(
        question:
            'Quel est l\'impact de la durée du sommeil sur le risque d\'obésité ?',
        options: [
          'N\'a aucun effet sur le poids corporel',
          'Une courte durée de sommeil est associée à un risque d\'obésité plus faible',
          'Une longue durée de sommeil est associée à un risque d\'obésité plus élevé',
          'La durée du sommeil n\'a aucune influence sur la gestion du poids'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Tant les courtes que les longues durées de sommeil ont été associées à un risque accru d\'obésité et à des résultats métaboliques défavorables. Un sommeil insuffisant, défini comme moins de 7 heures par nuit pour les adultes, peut perturber les hormones régulant l\'appétit, augmenter la faim et les envies, altérer le métabolisme et perturber la régulation du glucose, ce qui contribue à la prise de poids et à l\'obésité. Une durée de sommeil cohérente et adéquate est essentielle pour la santé et le bien-être général, y compris la gestion du poids et la prévention de l\'obésité.',
      ),

      // Question 40
      QuizQuestionModel(
        question:
            "Quel est l'impact de l'urbanisation sur les taux d'obésité ?",
        options: [
          'Les zones urbaines ont des taux d\'obésité plus élevés que les zones rurales',
          'Les zones rurales ont des taux d\'obésité plus élevés que les zones urbaines',
          'Les taux d\'obésité sont similaires dans les zones urbaines et rurales',
          'L\'urbanisation n\'a aucun effet sur le risque d\'obésité'
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'urbanisation, caractérisée par des changements de mode de vie, de régime alimentaire, d\'activité physique et d\'environnements construits, a été associée à une augmentation des taux d\'obésité dans les zones rurales en raison des changements de régimes alimentaires et de l\'accès limité à des aliments sains et à des installations récréatives. Ces changements, associés à des disparités socioéconomiques, à des influences environnementales et à des facteurs culturels, contribuent à l\'épidémie d\'obésité dans les communautés urbaines et rurales.',
      ),
    ];
  } else if (category == 'Diabètes') {
    loadedQuestions = [
      // Question 1
      QuizQuestionModel(
          question: 'Qu\'est-ce que le diabète?',
          options: [
            'Une infection bactérienne',
            'Une maladie virale',
            'Une condition chronique caractérisée par des niveaux élevés de sucre dans le sang',
            'Un type de cancer'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Le diabète est une maladie chronique caractérisée par des niveaux élevés de sucre (glucose) dans le sang, soit parce que le corps produit insuffisamment d\'insuline, soit parce que les cellules ne répondent pas à l\'insuline produite.'),

// Question 2
      QuizQuestionModel(
          question:
              'Quelle hormone est responsable de la régulation des niveaux de sucre dans le sang?',
          options: ['Oestrogène', 'Insuline', 'Testostérone', 'Thyroxine'],
          correctAnswerIndex: 1,
          explanation:
              "L'insuline est une hormone produite par le pancréas qui aide à réguler les niveaux de sucre dans le sang en facilitant l'absorption du glucose par les cellules."),

// Question 3
      QuizQuestionModel(
          question: 'Quels sont les deux principaux types de diabète?',
          options: [
            'Type A et type B',
            'Diabète juvénile et diabète de l\'adulte',
            'Type 1 et type 2',
            'Diabète gestationnel et prédiabète'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Les deux principaux types de diabète sont le diabète de type 1, caractérisé par l\'incapacité du corps à produire de l\'insuline, et le diabète de type 2, caractérisé par une résistance à l\'insuline et une insuffisance relative en insuline.'),

// Question 4
      QuizQuestionModel(
          question:
              'Lequel des éléments suivants est un facteur de risque pour le diabète de type 2?',
          options: [
            'Être en sous-poids',
            'Activité physique régulière',
            'Antécédents familiaux de diabète',
            'Faible consommation de glucides'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Des antécédents familiaux de diabète augmentent le risque de développer un diabète de type 2, car la génétique peut jouer un rôle significatif en prédisposant les individus à la condition.'),

// Question 5
      QuizQuestionModel(
          question: 'Qu\'est-ce que la résistance à l\'insuline?',
          options: [
            "L'incapacité du corps à produire de l'insuline",
            "L'incapacité du corps à utiliser l'insuline efficacement",
            'Une condition caractérisée par des niveaux bas de sucre dans le sang',
            "Une réponse auto-immune contre les cellules produisant de l'insuline"
          ],
          correctAnswerIndex: 1,
          explanation:
              "La résistance à l'insuline se produit lorsque les cellules du corps ne répondent pas efficacement à l'insuline, entraînant des niveaux élevés de sucre dans le sang et un risque accru de diabète de type 2."),

// Question 6
      QuizQuestionModel(
          question: 'Quels sont les symptômes du diabète?',
          options: [
            'Soif excessive, mictions fréquentes et perte de poids inexpliquée',
            'Fièvre, frissons et mal de gorge',
            'Douleur thoracique, essoufflement et palpitations',
            'Nausées, vomissements et douleurs abdominales'
          ],
          correctAnswerIndex: 0,
          explanation:
              'Les symptômes courants du diabète comprennent une soif excessive, des mictions fréquentes, une perte de poids inexpliquée, une fatigue, une vision floue et une cicatrisation lente des plaies.'),

// Question 7
      QuizQuestionModel(
          question: "Qu'est-ce que l'HbA1c?",
          options: [
            "Un type d'insuline",
            'Un médicament contre l\'hypertension artérielle',
            'Une mesure des niveaux moyens de glucose dans le sang au cours des 2 à 3 derniers mois',
            'Un médicament abaissant le cholestérol'
          ],
          correctAnswerIndex: 2,
          explanation:
              "L'HbA1c, également connue sous le nom d'hémoglobine glyquée, est une mesure des niveaux moyens de glucose dans le sang au cours des 2 à 3 derniers mois. Elle est utilisée pour évaluer le contrôle glycémique à long terme chez les personnes atteintes de diabète."),

// Question 8
      QuizQuestionModel(
          question: 'Comment traite-t-on le diabète de type 1?',
          options: [
            'Médicaments par voie orale',
            'Injections d\'insuline ou thérapie par pompe à insuline',
            'Seul un régime et de l\'exercice',
            'Chirurgie'
          ],
          correctAnswerIndex: 1,
          explanation:
              "Le diabète de type 1 est traité par des injections d'insuline ou une thérapie par pompe à insuline, car le corps est incapable de produire de l'insuline par lui-même."),

// Question 9
      QuizQuestionModel(
          question: "Qu'est-ce que le coma cétoacidotique (DKA)?",
          options: [
            "Un type d'insuline",
            'Une complication grave du diabète caractérisée par des taux élevés de sucre dans le sang, une cétose et une acidose métabolique',
            "Un test sanguin utilisé pour diagnostiquer le diabète",
            "Une condition causée par des taux bas de sucre dans le sang"
          ],
          correctAnswerIndex: 1,
          explanation:
              "Le coma cétoacidotique (DKA) est une complication grave du diabète caractérisée par des taux élevés de sucre dans le sang, une cétose (accumulation de cétones) et une acidose métabolique. Il nécessite une attention médicale immédiate et un traitement par des liquides intraveineux et de l'insuline."),

// Question 10
      QuizQuestionModel(
          question: 'Qu\'est-ce que l\'hypoglycémie?',
          options: [
            'Des taux élevés de sucre dans le sang',
            'Des taux bas de sucre dans le sang',
            "Une réponse auto-immune contre les cellules produisant de l'insuline",
            'Une complication chronique du diabète'
          ],
          correctAnswerIndex: 1,
          explanation:
              "L'hypoglycémie se produit lorsque les taux de sucre dans le sang chutent en dessous des niveaux normaux, entraînant des symptômes tels que des tremblements, des sueurs, de la confusion et des étourdissements. Elle peut être causée par un excès d'insuline ou de médicaments antidiabétiques oraux, des repas retardés ou sautés, ou une activité physique accrue."),

// Question 11
      QuizQuestionModel(
          question: "Qu'est-ce que le phénomène de l'aube dans le diabète?",
          options: [
            'Une chute soudaine des taux de sucre dans le sang pendant les premières heures du matin',
            "Une augmentation des taux de sucre dans le sang pendant les premières heures du matin due à la libération d'hormones contre-régulatrices",
            "Une condition caractérisée par des mictions fréquentes pendant la nuit",
            "Une complication du diabète caractérisée par une vision floue au réveil"
          ],
          correctAnswerIndex: 1,
          explanation:
              "Le phénomène de l'aube fait référence à une augmentation des taux de sucre dans le sang pendant les premières heures du matin, généralement entre 2 h et 8 h du matin, en raison de la libération d'hormones contre-régulatrices, telles que le cortisol et l'hormone de croissance. Il s'agit d'une réponse physiologique normale mais peut être exagérée chez les personnes atteintes de diabète."),

// Question 12
      QuizQuestionModel(
          question: "Qu'est-ce que la rétinopathie diabétique?",
          options: [
            'Une condition caractérisée par des taux élevés de sucre dans le sang',
            "Une complication du diabète affectant les yeux",
            "Un type d'insuline",
            "Une réponse auto-immune contre les cellules produisant de l'insuline"
          ],
          correctAnswerIndex: 1,
          explanation:
              "La rétinopathie diabétique est une complication du diabète qui affecte les vaisseaux sanguins de la rétine, le tissu sensible à la lumière à l'arrière de l'œil. Elle peut entraîner une perte de vision et la cécité si elle n'est pas traitée."),

// Question 13
      QuizQuestionModel(
          question:
              "Quel est l'objectif recommandé de tension artérielle pour les personnes atteintes de diabète?",
          options: [
            'Moins de 120/80 mmHg',
            'Moins de 130/80 mmHg',
            'Moins de 140/90 mmHg',
            'Moins de 150/90 mmHg'
          ],
          correctAnswerIndex: 1,
          explanation:
              "L'objectif recommandé de tension artérielle pour les personnes atteintes de diabète est inférieur à 130/80 mmHg pour réduire le risque de complications cardiovasculaires."),

// Question 14
      QuizQuestionModel(
          question: "Qu'est-ce que la neuropathie périphérique?",
          options: [
            'Une condition caractérisée par des taux élevés de sucre dans le sang',
            'Une complication du diabète affectant les nerfs',
            "Un type d'insuline",
            "Une réponse auto-immune contre les cellules produisant de l'insuline"
          ],
          correctAnswerIndex: 1,
          explanation:
              "La neuropathie périphérique est une complication du diabète qui affecte les nerfs, en particulier ceux des extrémités telles que les pieds et les mains. Elle peut entraîner des symptômes tels que des engourdissements, des picotements, des sensations de brûlure et de la faiblesse."),

// Question 15
      QuizQuestionModel(
          question: "Qu'est-ce que la néphropathie diabétique?",
          options: [
            'Une condition caractérisée par des taux élevés de sucre dans le sang',
            'Une complication du diabète affectant les reins',
            "Un type d'insuline",
            "Une réponse auto-immune contre les cellules produisant de l'insuline"
          ],
          correctAnswerIndex: 1,
          explanation:
              "La néphropathie diabétique est une complication du diabète qui affecte les reins, entraînant des lésions et un dysfonctionnement rénaux. C'est une cause principale de maladie rénale terminale (ESRD) et peut nécessiter une dialyse ou une transplantation rénale."),

// Question 16
      QuizQuestionModel(
          question: 'Quel est le meilleur moyen de prévenir le diabète?',
          options: [
            "Manger un régime riche en aliments transformés et en sucre",
            'Maintenir un poids santé et pratiquer régulièrement une activité physique',
            'Fumer des cigarettes',
            'Consommer des quantités excessives d\'alcool'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Maintenir un poids santé, suivre un régime équilibré et pratiquer régulièrement une activité physique sont des facteurs de mode de vie clés qui peuvent aider à prévenir ou à retarder l\'apparition du diabète de type 2.'),

// Question 17
      QuizQuestionModel(
          question: "Quel est le rôle de la génétique dans le diabète?",
          options: [
            'La génétique ne joue aucun rôle dans le diabète',
            'La génétique peut augmenter le risque de diabète de type 1 mais pas de diabète de type 2',
            'La génétique peut augmenter le risque de diabète de type 2 mais pas de diabète de type 1',
            "La génétique peut influencer le risque de diabète de type 1 et de type 2"
          ],
          correctAnswerIndex: 3,
          explanation:
              'La génétique peut influencer le risque de diabète de type 1 et de type 2, bien que le diabète de type 2 soit plus fortement influencé par des facteurs génétiques tels que les antécédents familiaux, l\'ethnicité et la susceptibilité génétique.'),

// Question 18
      QuizQuestionModel(
          question:
              'Quel est le rôle de l\'alimentation dans la gestion du diabète?',
          options: [
            "Il est recommandé de manger un régime riche en sucre et en aliments transformés",
            'Suivre un régime équilibré comprenant des céréales complètes, des fruits, des légumes, des protéines maigres et des graisses saines',
            'Consommer de gros repas de manière peu fréquente',
            'Sauter des repas est bénéfique pour le contrôle de la glycémie'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Suivre un régime équilibré comprenant des céréales complètes, des fruits, des légumes, des protéines maigres et des graisses saines est essentiel pour gérer les taux de sucre dans le sang et prévenir les complications chez les personnes atteintes de diabète.'),

// Question 19
      QuizQuestionModel(
          question: "Qu'est-ce que l'effet Somogyi?",
          options: [
            'Une chute soudaine des taux de sucre dans le sang pendant la nuit',
            "Une augmentation des taux de sucre dans le sang pendant la nuit due à la libération d'hormones contre-régulatrices",
            "Une condition caractérisée par des mictions fréquentes pendant la nuit",
            "Une complication du diabète caractérisée par une vision floue au réveil"
          ],
          correctAnswerIndex: 1,
          explanation:
              "L'effet Somogyi, également connu sous le nom d'hyperglycémie de rebond, fait référence à une augmentation des taux de sucre dans le sang pendant la nuit due à la libération d'hormones contre-régulatrices, telles que le cortisol et l'hormone de croissance, en réponse à l'hypoglycémie nocturne (taux bas de sucre dans le sang)."),

// Question 20
      QuizQuestionModel(
          question:
              "Quel est le rôle de l'exercice dans la gestion du diabète?",
          options: [
            "L'exercice régulier n'est pas recommandé pour les personnes atteintes de diabète",
            "L'exercice régulier aide à améliorer la sensibilité à l'insuline, à abaisser les taux de sucre dans le sang et à gérer le poids",
            'L\'exercice augmente le risque d\'hypoglycémie chez les personnes atteintes de diabète',
            "L'exercice n'a aucun impact sur les taux de sucre dans le sang"
          ],
          correctAnswerIndex: 1,
          explanation:
              "L'exercice régulier aide à améliorer la sensibilité à l'insuline, à abaisser les taux de sucre dans le sang, à gérer le poids et à réduire le risque de complications cardiovasculaires chez les personnes atteintes de diabète. Il est un élément essentiel de la gestion du diabète."),

      // Question 22
      QuizQuestionModel(
        question: 'Quels sont les symptômes du diabète?',
        options: [
          'Mictions fréquentes, soif excessive, perte de poids inexpliquée',
          'Vision floue, cicatrisation lente des plaies, fatigue',
          'Engourdissement ou picotements dans les mains ou les pieds, infections récurrentes',
          'Toutes les réponses ci-dessus'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Les symptômes courants du diabète comprennent des mictions fréquentes, une soif excessive, une perte de poids inexpliquée, une vision floue, une cicatrisation lente des plaies, une fatigue, un engourdissement ou des picotements dans les mains ou les pieds, et des infections récurrentes. Ces symptômes peuvent varier en fonction du type de diabète et des taux de sucre dans le sang de la personne. La détection précoce et la gestion du diabète sont essentielles pour prévenir les complications et améliorer la qualité de vie.',
      ),

      // Question 23
      QuizQuestionModel(
        question: 'Quel est le rôle de l\'insuline dans le diabète?',
        options: [
          'L\'insuline aide à abaisser les niveaux de sucre dans le sang',
          'L\'insuline favorise la perte de poids',
          'L\'insuline augmente les niveaux de sucre dans le sang',
          'L\'insuline n\'a aucun effet sur les niveaux de sucre dans le sang'
        ],
        correctAnswerIndex: 0,
        explanation:
            'L\'insuline est une hormone produite par le pancréas qui aide à abaisser les niveaux de sucre dans le sang en facilitant l\'absorption du glucose du sang dans les cellules pour la production et le stockage d\'énergie. Dans le diabète, le corps ne produit pas suffisamment d\'insuline (diabète de type 1) ou ne peut pas utiliser efficacement l\'insuline (diabète de type 2), ce qui entraîne des niveaux élevés de sucre dans le sang et des déséquilibres métaboliques.',
      ),

      // Question 24
      QuizQuestionModel(
        question:
            'Quelle est la différence entre le diabète de type 1 et de type 2?',
        options: [
          'Le diabète de type 1 est plus courant chez les adultes, tandis que le diabète de type 2 est plus courant chez les enfants',
          'Le diabète de type 1 est une condition auto-immune, tandis que le diabète de type 2 est lié à des facteurs de mode de vie',
          'Le diabète de type 1 peut être prévenu par l\'alimentation et l\'exercice, tandis que le diabète de type 2 ne peut pas l\'être',
          'Le diabète de type 1 est réversible, tandis que le diabète de type 2 ne l\'est pas'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le diabète de type 1 est une condition auto-immune dans laquelle le système immunitaire attaque et détruit les cellules bêta produisant de l\'insuline dans le pancréas, entraînant une carence en insuline et des niveaux élevés de sucre dans le sang. Le diabète de type 2, en revanche, est lié à des facteurs de mode de vie tels que l\'obésité, l\'inactivité physique et une mauvaise alimentation, et se caractérise par une résistance à l\'insuline et une sécrétion d\'insuline altérée. Les deux types de diabète nécessitent une gestion à vie mais peuvent avoir des approches de traitement différentes.',
      ),

      // Question 25
      QuizQuestionModel(
        question: 'Quels sont les facteurs de risque du diabète de type 2?',
        options: [
          'Antécédents familiaux de diabète, obésité, mode de vie sédentaire',
          'Hypertension artérielle, tabagisme, consommation excessive d\'alcool',
          'Âge avancé, diabète gestationnel, syndrome des ovaires polykystiques',
          'Toutes les réponses ci-dessus'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Les facteurs de risque du diabète de type 2 comprennent les antécédents familiaux de diabète, l\'obésité, le mode de vie sédentaire, une alimentation malsaine, l\'hypertension artérielle, le tabagisme, la consommation excessive d\'alcool, l\'âge avancé, le diabète gestationnel et des conditions telles que le syndrome des ovaires polykystiques (SOPK). La prise en charge des facteurs de risque modifiables par des modifications du mode de vie et des dépistages de santé réguliers peut aider à prévenir ou à retarder l\'apparition du diabète de type 2.',
      ),

      // Question 26
      QuizQuestionModel(
        question: 'Comment le diabète est-il diagnostiqué?',
        options: [
          'Test de glycémie à jeun, test de tolérance au glucose oral, test A1C',
          'Mesure de la pression artérielle, test de cholestérol, test de fonction rénale',
          'Examen physique, analyse d\'urine, examen des yeux',
          'Toutes les réponses ci-dessus'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le diabète est diagnostiqué par divers tests, notamment le test de glycémie à jeun, le test de tolérance au glucose oral et le test A1C, qui mesurent les niveaux de sucre dans le sang et évaluent le métabolisme du glucose. Des tests supplémentaires tels que la mesure de la pression artérielle, le test de cholestérol, le test de la fonction rénale, l\'examen physique, l\'analyse d\'urine et l\'examen des yeux peuvent être effectués pour évaluer les complications liées au diabète et l\'état de santé général.',
      ),

      // Question 27
      QuizQuestionModel(
        question: 'Quel est le traitement du diabète de type 1?',
        options: [
          'Thérapie à l\'insuline, surveillance de la glycémie, comptage des glucides',
          'Médicaments par voie orale, modifications du mode de vie, perte de poids',
          'Suppléments alimentaires, remèdes à base de plantes, acupuncture',
          'Chirurgie, radiothérapie, chimiothérapie'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le traitement principal du diabète de type 1 est la thérapie à l\'insuline, qui implique des injections régulières ou l\'utilisation d\'une pompe à insuline pour remplacer l\'insuline que le corps ne peut pas produire. La surveillance de la glycémie, le comptage des glucides, une alimentation saine, une activité physique régulière et une surveillance médicale étroite sont des éléments essentiels de la gestion du diabète de type 1 et de la prévention des complications.',
      ),

      // Question 28
      QuizQuestionModel(
        question: 'Quel est le traitement du diabète de type 2?',
        options: [
          'Modifications du mode de vie, médicaments par voie orale, thérapie à l\'insuline',
          'Suppléments alimentaires, remèdes à base de plantes, acupuncture',
          'Chirurgie, radiothérapie, chimiothérapie',
          'Surveillance de la glycémie, comptage des glucides, perte de poids'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le traitement du diabète de type 2 implique généralement des modifications du mode de vie, notamment une alimentation saine, une activité physique régulière, la gestion du poids et la surveillance de la glycémie, ainsi que des médicaments par voie orale et, dans certains cas, une thérapie à l\'insuline. Les plans de traitement individualisés sont basés sur les taux de sucre dans le sang, l\'état de santé, les complications et d\'autres facteurs, dans le but d\'atteindre un contrôle optimal de la glycémie et de prévenir les complications à long terme.',
      ),

      // Question 29
      QuizQuestionModel(
        question:
            'Quel est l\'impact de l\'alimentation sur la gestion du diabète?',
        options: [
          'Une alimentation équilibrée avec contrôle des portions aide à réguler les niveaux de sucre dans le sang',
          'Les régimes riches en protéines et faibles en glucides sont recommandés pour le diabète',
          'Les régimes de jeûne ou de désintoxication sont efficaces pour la gestion du diabète',
          'L\'alimentation n\'a aucun effet sur le contrôle de la glycémie'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Une alimentation équilibrée avec contrôle des portions, axée sur des aliments riches en nutriments tels que les fruits, les légumes, les céréales complètes, les protéines maigres et les graisses saines, est essentielle pour la gestion du diabète et la régulation des niveaux de sucre dans le sang. Le comptage des glucides, la planification des repas et une alimentation consciente peuvent aider les personnes atteintes de diabète à atteindre un contrôle optimal de la glycémie, à maintenir un poids santé et à réduire le risque de complications.',
      ),

      // Question 30
      QuizQuestionModel(
        question:
            'Quel est l\'impact de l\'activité physique sur la gestion du diabète?',
        options: [
          'L\'exercice régulier aide à abaisser les niveaux de sucre dans le sang et à améliorer la sensibilité à l\'insuline',
          'L\'activité physique n\'a aucun effet sur le contrôle de la glycémie',
          'Les séances d\'entraînement de haute intensité sont recommandées pour la gestion du diabète',
          'Le mode de vie sédentaire est bénéfique pour le diabète'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Une activité physique régulière, comprenant des exercices aérobiques, de renforcement musculaire, de flexibilité et des activités récréatives, aide à abaisser les niveaux de sucre dans le sang, à améliorer la sensibilité à l\'insuline, à gérer le poids, à réduire le risque cardiovasculaire et à améliorer la santé et le bien-être général des personnes atteintes de diabète. L\'exercice doit être adapté aux préférences individuelles, au niveau de forme physique, à l\'état de santé et aux objectifs de traitement pour maximiser les avantages et minimiser les risques.',
      )
    ];
  } else if (category == 'Hépatithe') {
    loadedQuestions = [
      // Question 1
      QuizQuestionModel(
        question: 'Qu\'est-ce que l\'hépatite?',
        options: [
          'Une infection bactérienne',
          'Une maladie virale',
          'Un type de cancer',
          'Une condition auto-immune'
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'hépatite est une infection virale qui provoque une inflammation du foie. Il existe plusieurs types de virus de l\'hépatite, notamment les hépatites A, B, C, D et E, chacune avec des modes de transmission, des symptômes et des options de traitement distincts.',
      ),

      // Question 2
      QuizQuestionModel(
        question: 'Quels sont les symptômes courants de l\'hépatite?',
        options: [
          'Jaunisse, fatigue, douleurs abdominales',
          'Fièvre, toux, mal de gorge',
          'Nausées, vomissements, diarrhée',
          'Maux de tête, douleurs musculaires, douleurs articulaires'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Les symptômes courants de l\'hépatite comprennent la jaunisse (jaunissement de la peau et des yeux), la fatigue, les douleurs abdominales, les nausées, les vomissements, l\'urine foncée, les selles pâles et la perte d\'appétit. Certaines personnes atteintes d\'hépatite peuvent également ressentir de la fièvre, des douleurs articulaires, des douleurs musculaires et d\'autres symptômes grippaux.',
      ),

      // Question 3
      QuizQuestionModel(
        question: 'Comment l\'hépatite est-elle transmise?',
        options: [
          'Par des aliments et de l\'eau contaminés',
          'Par contact sexuel',
          'Par le sang et les liquides corporels',
          'Toutes les réponses ci-dessus'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Les virus de l\'hépatite peuvent être transmis par diverses voies, notamment des aliments et de l\'eau contaminés (hépatites A et E), des contacts sexuels (hépatites B et C) et une exposition au sang infecté et aux liquides corporels (hépatites B, C et D). Les stratégies de prévention telles que la vaccination ',
      ),

      // Question 4
      QuizQuestionModel(
        question:
            'Quelle est la différence entre l\'hépatite aiguë et chronique?',
        options: [
          'L\'hépatite aiguë est une infection à court terme, tandis que l\'hépatite chronique dure plus de six mois',
          'L\'hépatite aiguë est causée par le virus de l\'hépatite A, tandis que l\'hépatite chronique est causée par les virus de l\'hépatite B et C',
          'L\'hépatite aiguë est plus grave que l\'hépatite chronique',
          'L\'hépatite aiguë nécessite une hospitalisation, tandis que l\'hépatite chronique ne le nécessite pas'
        ],
        correctAnswerIndex: 0,
        explanation:
            'L\'hépatite aiguë est une infection à court terme qui se résout généralement d\'elle-même en quelques semaines à quelques mois, tandis que l\'hépatite chronique dure plus de six mois et peut nécessiter une prise en charge à long terme. L\'hépatite chronique est souvent causée par les virus de l\'hépatite B, C ou D et peut entraîner des lésions hépatiques, une cirrhose et un cancer du foie si elle n\'est pas traitée.',
      ),

      // Question 5
      QuizQuestionModel(
        question: 'Comment l\'hépatite est-elle diagnostiquée?',
        options: [
          'Tests sanguins, tests de la fonction hépatique, panel d\'hépatites virales',
          'Études d\'imagerie, biopsie du foie, endoscopie',
          'Examen physique, antécédents médicaux, évaluation des symptômes',
          'Toutes les réponses ci-dessus'
        ],
        correctAnswerIndex: 0,
        explanation:
            'L\'hépatite est diagnostiquée par des tests sanguins, des tests de la fonction hépatique et des panels d\'hépatites virales qui détectent des anticorps spécifiques, des antigènes et du matériel génétique viral dans le sang. Des tests supplémentaires tels que des études d\'imagerie, une biopsie du foie et une endoscopie peuvent être effectués pour évaluer les lésions hépatiques, le stade de la maladie hépatique et guider les décisions de traitement.',
      ),

      // Question 6
      QuizQuestionModel(
        question: 'Quel est le traitement de l\'hépatite?',
        options: [
          'Médicaments antiviraux, modulateurs immunitaires, greffe de foie',
          'Antibiotiques, analgésiques, anti-inflammatoires',
          'Compléments alimentaires, remèdes à base de plantes, acupuncture',
          'Chirurgie, radiothérapie, chimiothérapie'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le traitement de l\'hépatite dépend du type de virus, de la gravité des lésions hépatiques et de l\'état de santé individuel. Des médicaments antiviraux, des modulateurs immunitaires et une greffe de foie peuvent être utilisés pour traiter l\'hépatite chronique et prévenir les complications telles que la cirrhose et le cancer du foie. Les modifications du mode de vie, les changements alimentaires et le suivi médical régulier sont également importants pour la gestion de l\'hépatite et la promotion de la santé du foie.',
      ),

      // Question 7
      QuizQuestionModel(
        question: 'Qu\'est-ce que l\'hépatite A?',
        options: [
          'Une infection sexuellement transmissible',
          'Une intoxication alimentaire',
          'Un virus transmis par le sang',
          'Une condition auto-immune'
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'hépatite A est une infection virale principalement transmise par des aliments et de l\'eau contaminés. Elle provoque une inflammation aiguë du foie et des symptômes grippaux, tels que la jaunisse, la fatigue, les nausées et les douleurs abdominales. L\'hépatite A est prévenable par la vaccination et de bonnes pratiques d\'hygiène, telles que le lavage des mains et la manipulation sûre des aliments.',
      ),

      // Question 8
      QuizQuestionModel(
        question: 'Qu\'est-ce que l\'hépatite B?',
        options: [
          'Une infection sexuellement transmissible',
          'Une intoxication alimentaire',
          'Un virus transmis par le sang',
          'Une condition auto-immune'
        ],
        correctAnswerIndex: 2,
        explanation:
            'L\'hépatite B est un virus transmis par le sang qui se propage par exposition au sang infecté et aux liquides corporels, comme lors de contacts sexuels, de partage d\'aiguilles ou de transmission de la mère à l\'enfant lors de l\'accouchement. Elle peut provoquer une infection hépatique aiguë ou chronique, entraînant des lésions hépatiques, une cirrhose et un cancer du foie. L\'hépatite B est prévenable par la vaccination et des pratiques de santé sûres.',
      ),

      // Question 9
      QuizQuestionModel(
        question: 'Qu\'est-ce que l\'hépatite C?',
        options: [
          'Une infection sexuellement transmissible',
          'Une intoxication alimentaire',
          'Un virus transmis par le sang',
          'Une condition auto-immune'
        ],
        correctAnswerIndex: 2,
        explanation:
            'L\'hépatite C est un virus transmis par le sang, principalement par exposition au sang infecté, par le partage d\'aiguilles, les transfusions sanguines ou les procédures médicales. Elle peut provoquer une infection hépatique chronique, entraînant des lésions hépatiques, une cirrhose et un cancer du foie. L\'hépatite C est guérissable avec des médicaments antiviraux, mais la détection et le traitement précoces sont essentiels pour prévenir les complications.',
      ),

      // Question 10
      QuizQuestionModel(
        question: 'Qu\'est-ce que l\'hépatite D?',
        options: [
          'Une infection sexuellement transmissible',
          'Une intoxication alimentaire',
          'Un virus transmis par le sang',
          'Une condition auto-immune'
        ],
        correctAnswerIndex: 2,
        explanation:
            'L\'hépatite D, également connue sous le nom d\'hépatite delta, est un virus transmis par le sang qui nécessite la présence du virus de l\'hépatite B pour se répliquer et provoquer une infection. Elle peut entraîner de graves lésions hépatiques et des complications chez les personnes atteintes d\'hépatite B chronique.',
      ),
      // Question 13
      QuizQuestionModel(
        question: 'Quelles sont les complications de l\'hépatite?',
        options: [
          'Lésions hépatiques, cirrhose, cancer du foie',
          'Insuffisance rénale, maladie cardiaque, infections pulmonaires',
          'Troubles neurologiques, conditions auto-immunes, problèmes cutanés',
          'Toutes les réponses ci-dessus'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Les complications de l\'hépatite incluent des lésions hépatiques, une cirrhose (cicatrisation du foie), un cancer du foie, une insuffisance hépatique et d\'autres affections liées au foie. Les infections chroniques par l\'hépatite, en particulier les hépatites B et C, peuvent entraîner des lésions hépatiques à long terme et augmenter le risque de complications graves. La détection précoce, le traitement et les modifications du mode de vie sont importants pour prévenir les complications liées au foie et améliorer les résultats globaux de santé.',
      ),

      // Question 14
      QuizQuestionModel(
        question: 'Comment prévenir l\'hépatite?',
        options: [
          'Vaccination, pratiques de santé sûres, dépistages médicaux réguliers',
          'Antibiotiques, médicaments antiviraux, modulateurs immunitaires',
          'Compléments alimentaires, remèdes à base de plantes, acupuncture',
          'Chirurgie, radiothérapie, chimiothérapie'
        ],
        correctAnswerIndex: 0,
        explanation:
            'L\'hépatite peut être prévenue par la vaccination, des pratiques de santé sûres et des dépistages médicaux réguliers. Des vaccins sont disponibles contre les hépatites A et B, tandis que des pratiques de santé sûres telles que l\'hygiène des mains et les pratiques sexuelles sûres peuvent aider à réduire le risque de transmission de l\'hépatite. Les dépistages médicaux réguliers, y compris les tests sanguins et les tests de la fonction hépatique, peuvent aider à détecter les infections par l\'hépatite tôt et à orienter les décisions de traitement.',
      ),

      // Question 15
      QuizQuestionModel(
        question: 'Quel est l\'impact de l\'hépatite sur la santé mondiale?',
        options: [
          'L\'hépatite est un problème majeur de santé publique dans le monde',
          'L\'hépatite n\'a aucun impact sur la santé mondiale',
          'L\'hépatite n\'affecte qu\'un petit nombre de personnes',
          'L\'hépatite est une condition curable'
        ],
        correctAnswerIndex: 0,
        explanation:
            'L\'hépatite est un problème majeur de santé publique dans le monde, des millions de personnes étant touchées par des infections virales de l\'hépatite chaque année. Les infections chroniques par l\'hépatite, en particulier les hépatites B et C, peuvent entraîner de graves complications liées au foie, telles que la cirrhose et le cancer du foie, et contribuer à une morbidité et une mortalité importantes. Les efforts mondiaux de prévention, de dépistage et de traitement de l\'hépatite sont essentiels pour réduire le fardeau des maladies du foie et améliorer les résultats de santé pour les personnes concernées.',
      ),
    ];
  } else if (category == 'Tabagisme') {
    loadedQuestions = [
      // Question 1
      QuizQuestionModel(
        question: 'What is tobacco?',
        options: [
          'A type of food',
          'A plant used for medicinal purposes',
          'A plant used for making clothing',
          'A plant used for smoking and chewing'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Tobacco is a plant that is grown for its leaves, which are dried and processed for smoking, chewing, or snuffing. Tobacco contains nicotine, a highly addictive stimulant that affects the brain and central nervous system, leading to physical dependence and withdrawal symptoms in users.',
      ),

      // Question 2
      QuizQuestionModel(
        question: 'What is nicotine?',
        options: [
          'A type of food',
          'A plant used for medicinal purposes',
          'A plant used for making clothing',
          'A highly addictive stimulant found in tobacco'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Nicotine is a highly addictive stimulant found in tobacco products, such as cigarettes, cigars, and smokeless tobacco. It acts on the brain and central nervous system, increasing alertness, focus, and mood, while also causing physical dependence and withdrawal symptoms in users.',
      ),

      // Question 3
      QuizQuestionModel(
        question: 'What are the health risks of tobacco use?',
        options: [
          'Cancer, heart disease, lung disease',
          'Obesity, diabetes, high blood pressure',
          'Anemia, osteoporosis, arthritis',
          'All of the above'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Tobacco use is a major risk factor for various health conditions, including cancer (lung, throat, mouth, esophagus, pancreas, bladder), heart disease, stroke, lung disease (COPD, emphysema), and other chronic conditions. It is also associated with increased risk of premature death, reduced quality of life, and significant economic costs to individuals and society.',
      ),

      // Question 4
      QuizQuestionModel(
        question: 'What is secondhand smoke?',
        options: [
          'Smoke inhaled by the smoker',
          'Smoke exhaled by the smoker',
          'Smoke from burning tobacco products that is inhaled by others',
          'Smoke from burning incense or candles'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Secondhand smoke is the smoke from burning tobacco products, such as cigarettes, cigars, or pipes, that is inhaled by nonsmokers or bystanders. It contains harmful chemicals and toxins that can cause health problems, such as respiratory infections, asthma, heart disease, and lung cancer, in individuals exposed to it.',
      ),

      // Question 5
      QuizQuestionModel(
        question: 'What is thirdhand smoke?',
        options: [
          'Smoke inhaled by the smoker',
          'Smoke exhaled by the smoker',
          'Residual smoke particles and chemicals that linger on surfaces and in the air after smoking',
          'Smoke from burning incense or candles'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Thirdhand smoke is the residual smoke particles and chemicals that linger on surfaces, furniture, clothing, and in the air after smoking has occurred. It can be harmful to children, pets, and nonsmokers who come into contact with contaminated surfaces or environments, leading to potential health risks and exposure to toxic substances.',
      ),

// Question 6
      QuizQuestionModel(
          question:
              'What are the short-term effects of smoking on the respiratory system?',
          options: [
            'Improved lung function',
            'Decreased risk of respiratory infections',
            'Increased mucus production and irritation of airways',
            'Enhanced oxygen uptake by the lungs'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Smoking can lead to increased mucus production and irritation of the airways, which can cause symptoms such as coughing, wheezing, and shortness of breath. These effects can occur shortly after smoking and contribute to respiratory problems.'),

// Question 7
      QuizQuestionModel(
          question: 'How does smoking affect the cardiovascular system?',
          options: [
            'It lowers blood pressure',
            'It reduces the risk of heart disease',
            'It damages blood vessels and increases the risk of heart disease and stroke',
            'It improves circulation'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Smoking damages blood vessels, leading to the buildup of plaque and narrowing of the arteries. This increases the risk of heart disease, heart attacks, and strokes. Smoking also contributes to the formation of blood clots, which can further block blood flow to the heart and brain.'),

// Question 8
      QuizQuestionModel(
          question: 'What is the addictive substance found in cigarettes?',
          options: ['Caffeine', 'Nicotine', 'Alcohol', 'Cannabis'],
          correctAnswerIndex: 1,
          explanation:
              'Nicotine is the addictive substance found in cigarettes. It acts on the brain \'s reward system, leading to feelings of pleasure and reinforcement of smoking behavior. Nicotine addiction can make it difficult to quit smoking and can cause withdrawal symptoms when trying to quit.'),

// Question 9
      QuizQuestionModel(
          question:
              'How does smoking affect fertility and reproductive health?',
          options: [
            'It has no impact on fertility',
            'It increases fertility in both men and women',
            'It reduces fertility in both men and women',
            'It only affects women\'s fertility'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Smoking can reduce fertility in both men and women. In women, smoking can affect hormone levels, menstrual cycles, and egg quality, making it harder to conceive. In men, smoking can reduce sperm quality and quantity, leading to infertility or difficulty in achieving pregnancy.'),

// Question 10
      QuizQuestionModel(
          question: 'What is the main carcinogen in cigarette smoke?',
          options: ['Carbon monoxide', 'Nicotine', 'Tar', 'Formaldehyde'],
          correctAnswerIndex: 2,
          explanation:
              'Tar is the main carcinogen in cigarette smoke. It contains numerous harmful chemicals, including polycyclic aromatic hydrocarbons (PAHs) and aromatic amines, which are known to cause cancer. Tar accumulates in the lungs and respiratory tract, increasing the risk of lung cancer and other respiratory diseases.'),

// Question 11
      QuizQuestionModel(
          question: 'How does smoking affect lung health?',
          options: [
            'It improves lung function and capacity',
            'It has no impact on lung health',
            'It increases the risk of respiratory conditions such as chronic bronchitis, emphysema, and chronic obstructive pulmonary disease (COPD)',
            'It reduces the risk of lung cancer'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Smoking increases the risk of respiratory conditions such as chronic bronchitis, emphysema, and chronic obstructive pulmonary disease (COPD). Cigarette smoke contains irritants and toxins that damage the airways and reduce lung function over time. Smokers are at a higher risk of developing these conditions compared to non-smokers.'),

// Question 12
      QuizQuestionModel(
          question: 'What are the effects of smoking on skin?',
          options: [
            'It enhances skin appearance by making it younger and more radiant',
            'It has no effect on skin',
            'It causes premature aging of the skin and wrinkles',
            'It hydrates the skin and makes it more supple'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Smoking causes premature aging of the skin by damaging collagen and elastin fibers responsible for its elasticity and firmness. Smokers tend to develop deeper wrinkles and age spots more quickly than non-smokers.'),

// Question 13
      QuizQuestionModel(
          question:
              'What carcinogenic substances are present in cigarette smoke?',
          options: [
            'Vitamin C and folic acid',
            'Antioxidants and vitamins',
            'Nitrosamines and polycyclic aromatic hydrocarbons',
            'Minerals and trace elements'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Nitrosamines and polycyclic aromatic hydrocarbons are carcinogenic substances present in cigarette smoke. They are associated with an increased risk of developing various types of cancer, including lung cancer, throat cancer, mouth cancer, and esophageal cancer.'),

// Question 14
      QuizQuestionModel(
          question: 'What is carbon monoxide and its impact on health?',
          options: [
            'A harmless gas present in the air',
            'A toxic gas present in cigarette smoke that binds to hemoglobin and reduces the blood\'s ability to carry oxygen',
            'A gas that improves lung function',
            'A gas that stimulates insulin production'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Carbon monoxide is a toxic gas present in cigarette smoke. It binds to hemoglobin in the blood and reduces the blood\'s ability to carry oxygen to the organs and tissues of the body. This can lead to decreased oxygenation of cells and organ damage.'),

// Question 15
      QuizQuestionModel(
          question: 'What are the consequences of smoking during pregnancy?',
          options: [
            'It has no impact on pregnancy',
            'It increases the risk of miscarriage',
            'It can lead to low birth weight, premature birth, and birth defects',
            'It improves fetal development'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Smoking during pregnancy can have serious consequences for both the mother and the baby. It increases the risk of complications such as low birth weight, premature birth, and birth defects. Smoking can also affect fetal development and lead to long-term health problems for the child.'),

// Question 16
      QuizQuestionModel(
          question: 'What is the recommended approach for quitting smoking?',
          options: [
            'Quit abruptly without medical support',
            'Consult a healthcare professional for a personalized smoking cessation plan',
            'Ignore withdrawal symptoms and continue smoking',
            'Switch to vaping as a healthier alternative'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Recommended strategies for quitting smoking include consulting a healthcare professional for a personalized smoking cessation plan, using nicotine replacement therapy, participating in behavioral support programs, and adopting stress management techniques. A planned and supported quit attempt increases the chances of success.'),

// Question 17
      QuizQuestionModel(
          question: 'How can smoking affect oral health?',
          options: [
            'It strengthens tooth enamel and prevents cavities',
            'It has no effect on oral health',
            'It increases the risk of gum disease, cavities, and mouth cancer',
            'It improves gum health and reduces the risk of cavities'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Smoking increases the risk of gum disease, cavities, and mouth cancer. Cigarette smoke contains irritants that damage mouth tissues and reduce the immune system\'s ability to fight bacterial infections.'),

// Question 18
      QuizQuestionModel(
          question: 'What are the effects of smoking on the immune system?',
          options: [
            'It strengthens the immune system',
            'It has no effect on the immune system',
            'It weakens the immune system, making the body more vulnerable to infections',
            'It protects against allergies'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Smoking weakens the immune system by disrupting normal immune functions and reducing the body\'s ability to fight infections. Toxic substances in cigarette smoke impair immune responses, increasing the risk of bacterial, viral, and fungal infections.'),

// Question 19
      QuizQuestionModel(
          question: 'What are the primary methods of tobacco consumption?',
          options: [
            'Smoking cigarettes and chewing tobacco',
            'Drinking tobacco',
            'Inhaling cigarette smoke',
            'Smoking cigars and pipes'
          ],
          correctAnswerIndex: 0,
          explanation:
              'The primary methods of tobacco consumption include smoking cigarettes, chewing tobacco (snuff), smoking cigars and pipes, and inhaling cigarette smoke. Each of these methods exposes the user to harmful substances and increases the risk of health problems.'),

// Question 20
      QuizQuestionModel(
          question: 'What can long-term smoking lead to?',
          options: [
            'Enhanced mental health',
            'Reduced risk of chronic diseases',
            'Serious diseases such as cancer, cardiovascular diseases, and respiratory diseases',
            'Increased life expectancy'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Long-term smoking is associated with an increased risk of developing serious diseases such as cancer, cardiovascular diseases, and respiratory diseases. Toxic substances in cigarette smoke damage cells and contribute to the development of chronic conditions that can decrease quality of life and life expectancy.'),
    ];
  }

  return loadedQuestions;
}
