class Category {
  Category({
    this.title = '',
    this.imagePath = '',
    this.lessonCount = 0,
    this.money = 0,
    this.rating = 0.0,
    this.description = '',
    this.rewards = 0.0,
  });

  late String title;
  late int lessonCount;
  late int money;
  late double rating;
  late String imagePath;
  late String description;
  double rewards;

  static List<Category> categoryList = <Category>[
    Category(
      imagePath: 'assets/design_course/interFace1.png',
      description: 'Ce cours comprend les bases du contrôle du diabète',
      title: 'Diabetes',
      lessonCount: 24,
      money: 0,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      description:
          'Ce cours comprend les bases du contrôle de l\'hypertension artérielle',
      title: 'Hepatitis',
      lessonCount: 22,
      money: 0,
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/design_course/interFace1.png',
      description: 'Ce cours comprend les bases du contrôle du tabagisme',
      title: 'Smoking Cessation',
      lessonCount: 24,
      money: 0,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      description: 'Ce cours comprend les bases du contrôle de la dyslipidémie',
      title: 'Dyslipidemie',
      lessonCount: 22,
      money: 0,
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      description: 'Ce cours comprend les bases du contrôle de l\'obésité',
      title: 'Obesity',
      lessonCount: 22,
      money: 0,
      rating: 4.6,
    ),
  ];

  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'Obesity',
      lessonCount: 12,
      money: 0,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Dyslipidemie',
      lessonCount: 28,
      money: 0,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'Smoking Cessation',
      lessonCount: 12,
      money: 0,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Dyslipidemie',
      lessonCount: 28,
      money: 0,
      rating: 4.9,
    ),
  ];
}
