import 'package:ecardio/models/quizquestion.dart';

List<QuizQuestionModel> LoadQuizQuestions(String category) {
  List<QuizQuestionModel> loadedQuestions = [];

  if (category == 'Dyslipidemia') {
    loadedQuestions = [
      // Question 1
      QuizQuestionModel(
        question: 'What is the primary role of LDL cholesterol in the body?',
        options: [
          'Transporting cholesterol to cells',
          'Removing excess cholesterol from the body',
          'Breaking down cholesterol into bile acids',
          'Storing cholesterol in the liver'
        ],
        correctAnswerIndex: 0,
        explanation:
            'LDL cholesterol transports cholesterol to cells in the body, but having high levels of LDL cholesterol can increase the risk of plaque buildup in the arteries, leading to heart disease.',
      ),

      // Question 2
      QuizQuestionModel(
        question:
            'Which lipoprotein is often referred to as "good" cholesterol?',
        options: [
          'LDL cholesterol',
          'HDL cholesterol',
          'VLDL cholesterol',
          'Triglycerides'
        ],
        correctAnswerIndex: 1,
        explanation:
            'HDL cholesterol is often referred to as "good" cholesterol because it helps remove excess cholesterol from the bloodstream, reducing the risk of plaque buildup in the arteries.',
      ),

      // Question 3
      QuizQuestionModel(
        question: 'What is the main dietary source of trans fats?',
        options: ['Fish', 'Red meat', 'Vegetable oils', 'Processed foods'],
        correctAnswerIndex: 3,
        explanation:
            'Processed foods, such as packaged snacks, fried foods, and baked goods, are the main dietary sources of trans fats. Consuming trans fats can increase LDL cholesterol levels and the risk of heart disease.',
      ),

      // Question 4
      QuizQuestionModel(
        question:
            'Which of the following lifestyle factors can help lower LDL cholesterol levels?',
        options: [
          'Smoking',
          'Regular exercise',
          'High saturated fat intake',
          'Sedentary behavior'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Regular exercise can help lower LDL cholesterol levels and raise HDL cholesterol levels. It also promotes heart health by improving blood circulation and reducing inflammation.',
      ),

      // Question 5
      QuizQuestionModel(
        question:
            'What is the recommended maximum daily intake of dietary cholesterol for most adults?',
        options: ['300 mg', '500 mg', '800 mg', '1000 mg'],
        correctAnswerIndex: 0,
        explanation:
            'The recommended maximum daily intake of dietary cholesterol for most adults is 300 mg. Consuming excess dietary cholesterol can increase LDL cholesterol levels and the risk of heart disease.',
      ),

      // Question 6
      QuizQuestionModel(
        question:
            'Which type of cholesterol is associated with an increased risk of atherosclerosis and cardiovascular disease?',
        options: [
          'HDL cholesterol',
          'LDL cholesterol',
          'VLDL cholesterol',
          'Total cholesterol'
        ],
        correctAnswerIndex: 1,
        explanation:
            'LDL cholesterol, often referred to as "bad" cholesterol, is associated with an increased risk of atherosclerosis and cardiovascular disease. High levels of LDL cholesterol can lead to plaque buildup in the arteries, restricting blood flow and increasing the risk of heart attack and stroke.',
      ),

      // Question 7
      QuizQuestionModel(
        question:
            'What effect does high levels of triglycerides have on cardiovascular health?',
        options: [
          'Protective effect',
          'No effect',
          'Increased risk',
          'Decreased risk'
        ],
        correctAnswerIndex: 2,
        explanation:
            'High levels of triglycerides are associated with an increased risk of cardiovascular disease. Elevated triglyceride levels can contribute to the development of atherosclerosis and lead to heart attack and stroke.',
      ),

      // Question 8
      QuizQuestionModel(
        question:
            'Which lifestyle modification is most effective in reducing LDL cholesterol levels?',
        options: [
          'Smoking cessation',
          'Dietary changes',
          'Stress management',
          'Sleep hygiene'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Dietary changes, such as reducing intake of saturated and trans fats, increasing consumption of fruits, vegetables, and whole grains, and incorporating foods rich in omega-3 fatty acids, can be highly effective in reducing LDL cholesterol levels and improving heart health.',
      ),
      // Question 9
      QuizQuestionModel(
        question: 'What is the role of statins in managing dyslipidemia?',
        options: [
          'Lowering LDL cholesterol levels',
          'Increasing HDL cholesterol levels',
          'Reducing triglyceride levels',
          'All of the above'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Statins are a class of medications commonly used to manage dyslipidemia. They work primarily by lowering LDL cholesterol levels in the blood, which helps reduce the risk of cardiovascular events such as heart attack and stroke.',
      ),

// Question 10
      QuizQuestionModel(
        question: 'What is familial hypercholesterolemia?',
        options: [
          'A genetic disorder characterized by high LDL cholesterol levels',
          'A condition caused by excessive dietary cholesterol intake',
          'An autoimmune disease affecting cholesterol metabolism',
          'A type of dyslipidemia caused by sedentary lifestyle'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Familial hypercholesterolemia is a genetic disorder characterized by high levels of LDL cholesterol in the blood. It is inherited in an autosomal dominant pattern and increases the risk of premature cardiovascular disease.',
      ),

// Question 11
      QuizQuestionModel(
        question:
            'Which of the following dietary fats is associated with an increased risk of dyslipidemia?',
        options: [
          'Polyunsaturated fats',
          'Monounsaturated fats',
          'Saturated fats',
          'Trans fats'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Trans fats, also known as trans fatty acids, are associated with an increased risk of dyslipidemia. They raise LDL cholesterol levels and lower HDL cholesterol levels, increasing the risk of heart disease.',
      ),

// Question 12
      QuizQuestionModel(
        question:
            'What effect does regular physical activity have on cholesterol levels?',
        options: [
          'Increases LDL cholesterol levels',
          'Decreases HDL cholesterol levels',
          'Increases total cholesterol levels',
          'Decreases LDL cholesterol levels and increases HDL cholesterol levels'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Regular physical activity has a beneficial effect on cholesterol levels. It helps decrease LDL cholesterol levels (the "bad" cholesterol) and increases HDL cholesterol levels (the "good" cholesterol), which reduces the risk of cardiovascular disease.',
      ),

// Question 13
      QuizQuestionModel(
        question:
            'Which lifestyle modification can help reduce triglyceride levels?',
        options: [
          'Smoking cessation',
          'Increased alcohol consumption',
          'Regular physical activity',
          'High intake of sugary beverages'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Regular physical activity is an effective lifestyle modification for reducing triglyceride levels. Exercise helps increase the breakdown of triglycerides and improves lipid metabolism, leading to lower triglyceride levels in the blood.',
      ),

// Question 14
      QuizQuestionModel(
        question: 'What is the role of dietary fiber in managing dyslipidemia?',
        options: [
          'Increases LDL cholesterol levels',
          'Decreases HDL cholesterol levels',
          'Lowers LDL cholesterol levels',
          'No effect on cholesterol levels'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Dietary fiber helps lower LDL cholesterol levels by binding to cholesterol in the digestive tract and promoting its excretion from the body. Foods rich in soluble fiber, such as oats, beans, and fruits, are particularly effective in lowering LDL cholesterol levels.',
      ),

// Question 15
      QuizQuestionModel(
        question:
            'What is the target LDL cholesterol level for individuals at high risk of cardiovascular disease?',
        options: [
          'Less than 100 mg/dL',
          'Less than 130 mg/dL',
          'Less than 160 mg/dL',
          'Less than 200 mg/dL'
        ],
        correctAnswerIndex: 0,
        explanation:
            'The target LDL cholesterol level for individuals at high risk of cardiovascular disease is less than 100 mg/dL. Achieving and maintaining this target level can help reduce the risk of heart attack, stroke, and other cardiovascular events.',
      ),

// Question 16
      QuizQuestionModel(
        question: 'What is the primary source of dietary cholesterol?',
        options: [
          'Meat and poultry',
          'Dairy products',
          'Fish and seafood',
          'Plant-based foods'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Meat and poultry are the primary sources of dietary cholesterol. Foods such as beef, pork, and poultry contain cholesterol, particularly in the fatty portions and skin. Plant-based foods generally contain little to no cholesterol.',
      ),

// Question 17
      QuizQuestionModel(
        question:
            'What is the primary function of HDL cholesterol in the body?',
        options: [
          'Transporting cholesterol to cells',
          'Removing excess cholesterol from the bloodstream',
          'Producing cholesterol in the liver',
          'Storing cholesterol in adipose tissue'
        ],
        correctAnswerIndex: 1,
        explanation:
            'HDL cholesterol, often referred to as "good" cholesterol, plays a crucial role in removing excess cholesterol from the bloodstream and transporting it to the liver for excretion. This helps prevent the buildup of cholesterol in the arteries, reducing the risk of heart disease.',
      ),

// Question 18
      QuizQuestionModel(
        question: 'What effect does smoking have on cholesterol levels?',
        options: [
          'Increases HDL cholesterol levels',
          'Decreases LDL cholesterol levels',
          'Increases total cholesterol levels',
          'Decreases HDL cholesterol levels'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Smoking decreases HDL cholesterol levels (the "good" cholesterol) and increases LDL cholesterol levels (the "bad" cholesterol), contributing to the development of atherosclerosis and cardiovascular disease. Quitting smoking can help improve cholesterol levels and overall heart health.',
      ),

// Question 19
      QuizQuestionModel(
        question:
            'Which of the following conditions is characterized by high levels of triglycerides and low levels of HDL cholesterol?',
        options: [
          'Metabolic syndrome',
          'Hypertension',
          'Type 1 diabetes',
          'Cushing syndrome'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Metabolic syndrome is characterized by a cluster of conditions, including high levels of triglycerides, low levels of HDL cholesterol, abdominal obesity, high blood pressure, and insulin resistance. Individuals with metabolic syndrome are at increased risk of cardiovascular disease and type 2 diabetes.',
      ),

// Question 20
      QuizQuestionModel(
        question:
            'What effect does alcohol consumption have on triglyceride levels?',
        options: [
          'Increases triglyceride levels',
          'Decreases triglyceride levels',
          'No effect on triglyceride levels',
          'Increases HDL cholesterol levels'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Alcohol consumption can increase triglyceride levels in the blood. Excessive alcohol intake can lead to elevated triglyceride levels, which are associated with an increased risk of cardiovascular disease. Moderation is key when consuming alcohol to maintain heart health.',
      ),

// Question 21
      QuizQuestionModel(
        question:
            'Which of the following factors can contribute to dyslipidemia?',
        options: [
          'Genetics',
          'Diet',
          'Physical activity levels',
          'All of the above'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Dyslipidemia can be influenced by various factors, including genetics, diet, physical activity levels, and lifestyle habits. Genetic predisposition, dietary choices high in saturated and trans fats, sedentary behavior, and other lifestyle factors can contribute to dyslipidemia and increase the risk of cardiovascular disease.',
      ),

// Question 22
      QuizQuestionModel(
        question: 'What effect does stress have on cholesterol levels?',
        options: [
          'Increases HDL cholesterol levels',
          'Decreases LDL cholesterol levels',
          'Increases triglyceride levels',
          'Decreases total cholesterol levels'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Stress can increase triglyceride levels in the blood. Chronic stress activates the body\'s "fight or flight" response, leading to the release of stress hormones like cortisol, which can elevate triglyceride levels. Managing stress through relaxation techniques and coping strategies is important for maintaining heart health.',
      ),

// Question 23
      QuizQuestionModel(
        question:
            'What effect does omega-3 fatty acids have on cholesterol levels?',
        options: [
          'Increases LDL cholesterol levels',
          'Decreases HDL cholesterol levels',
          'Increases triglyceride levels',
          'Decreases triglyceride levels'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Omega-3 fatty acids, found in fatty fish, flaxseeds, and walnuts, have been shown to decrease triglyceride levels in the blood. Consuming omega-3 fatty acids as part of a healthy diet can help lower triglyceride levels and reduce the risk of cardiovascular disease.',
      ),

// Question 24
      QuizQuestionModel(
        question: 'What effect does weight loss have on cholesterol levels?',
        options: [
          'Increases LDL cholesterol levels',
          'Decreases HDL cholesterol levels',
          'Increases triglyceride levels',
          'Improves cholesterol levels'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Weight loss can improve cholesterol levels by reducing LDL cholesterol levels (the "bad" cholesterol), increasing HDL cholesterol levels (the "good" cholesterol), and lowering triglyceride levels. Achieving and maintaining a healthy weight through diet and exercise is essential for overall heart health.',
      ),

// Question 25
      QuizQuestionModel(
        question: 'What is the primary dietary source of saturated fats?',
        options: ['Olive oil', 'Avocado', 'Butter', 'Nuts and seeds'],
        correctAnswerIndex: 2,
        explanation:
            'Butter is the primary dietary source of saturated fats. Saturated fats are found in animal products such as butter, cheese, and fatty meats, as well as some plant-based oils like coconut oil and palm oil. Consuming excessive amounts of saturated fats can increase LDL cholesterol levels and the risk of heart disease.',
      ),

// Question 26
      QuizQuestionModel(
        question:
            'What effect does dietary cholesterol have on blood cholesterol levels?',
        options: [
          'Increases LDL cholesterol levels',
          'Decreases HDL cholesterol levels',
          'Increases triglyceride levels',
          'No significant effect'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Dietary cholesterol can increase LDL cholesterol levels in some individuals, especially those who are sensitive to dietary cholesterol intake. However, the impact of dietary cholesterol on blood cholesterol levels varies among individuals, and other factors such as genetics and overall dietary pattern also play a role.',
      ),

// Question 27
      QuizQuestionModel(
        question: 'What is the role of bile acids in cholesterol metabolism?',
        options: [
          'Transporting cholesterol to cells',
          'Breaking down cholesterol in the liver',
          'Removing cholesterol from the bloodstream',
          'Storing excess cholesterol in adipose tissue'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Bile acids, produced in the liver from cholesterol, play a crucial role in cholesterol metabolism by emulsifying dietary fats and facilitating their absorption in the intestine. Bile acids also aid in the digestion and absorption of fat-soluble vitamins and help eliminate excess cholesterol from the body.',
      ),

// Question 28
      QuizQuestionModel(
        question:
            'What effect does a diet high in processed foods have on cholesterol levels?',
        options: [
          'Increases HDL cholesterol levels',
          'Decreases LDL cholesterol levels',
          'Increases triglyceride levels',
          'No effect on cholesterol levels'
        ],
        correctAnswerIndex: 2,
        explanation:
            'A diet high in processed foods, which are often high in refined carbohydrates, sugars, and unhealthy fats, can increase triglyceride levels in the blood. Processed foods can also contribute to weight gain and metabolic dysfunction, further elevating triglyceride levels and increasing the risk of cardiovascular disease.',
      ),

// Question 29
      QuizQuestionModel(
        question:
            'What effect does dietary fiber have on blood cholesterol levels?',
        options: [
          'Increases LDL cholesterol levels',
          'Decreases HDL cholesterol levels',
          'Lowers LDL cholesterol levels',
          'No significant effect'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Dietary fiber helps lower LDL cholesterol levels by binding to cholesterol in the digestive tract and promoting its excretion from the body. Soluble fiber, in particular, forms a gel-like substance that traps cholesterol and prevents its absorption, leading to lower LDL cholesterol levels and reduced risk of cardiovascular disease.',
      ),

// Question 30
      QuizQuestionModel(
        question: 'What effect does aging have on cholesterol levels?',
        options: [
          'Increases HDL cholesterol levels',
          'Decreases LDL cholesterol levels',
          'Increases triglyceride levels',
          'Decreases total cholesterol levels'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Aging is associated with an increase in triglyceride levels in the blood. As people age, their metabolism slows down, and they may become less physically active, leading to weight gain and changes in lipid metabolism. Lifestyle modifications, such as regular exercise and a healthy diet, can help mitigate age-related increases in triglyceride levels.',
      ),

// Question 31
      QuizQuestionModel(
        question:
            'What effect does hormone replacement therapy have on cholesterol levels in postmenopausal women?',
        options: [
          'Increases HDL cholesterol levels',
          'Decreases LDL cholesterol levels',
          'Increases triglyceride levels',
          'Decreases total cholesterol levels'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Hormone replacement therapy (HRT) has been shown to decrease total cholesterol levels in postmenopausal women. Estrogen, the primary hormone used in HRT, can increase HDL cholesterol levels ("good" cholesterol) and decrease LDL cholesterol levels ("bad" cholesterol), leading to improvements in overall cholesterol profile and reduced risk of heart disease.',
      ),

// Question 32
      QuizQuestionModel(
        question:
            'What is the role of lipoprotein lipase in cholesterol metabolism?',
        options: [
          'Transporting cholesterol to cells',
          'Breaking down cholesterol in the liver',
          'Removing cholesterol from the bloodstream',
          'Facilitating the uptake of triglycerides by cells'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Lipoprotein lipase is an enzyme that plays a key role in cholesterol metabolism by facilitating the uptake of triglycerides from circulating lipoproteins into cells for energy production and storage. Lipoprotein lipase activity is regulated by hormones and dietary factors and is essential for lipid metabolism and overall health.',
      ),
    ];
  } else if (category == 'Obesity') {
    loadedQuestions = [
      // Question 1
      QuizQuestionModel(
        question: 'What is considered a BMI range for obesity?',
        options: [
          'BMI less than 18.5',
          'BMI between 18.5 and 24.9',
          'BMI between 25 and 29.9',
          'BMI greater than or equal to 30'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Obesity is defined as having a BMI (Body Mass Index) greater than or equal to 30. BMI is calculated by dividing a person\'s weight in kilograms by the square of their height in meters.',
      ),

      // Question 2
      QuizQuestionModel(
        question:
            'Which of the following factors contributes to the development of obesity?',
        options: [
          'Genetics',
          'Physical activity levels',
          'Dietary habits',
          'All of the above'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Obesity can result from a combination of genetic, environmental, and behavioral factors. While genetics can predispose individuals to obesity, lifestyle factors such as diet and physical activity levels also play significant roles in its development.',
      ),

      // Question 3
      QuizQuestionModel(
        question: 'What health conditions are associated with obesity?',
        options: [
          'Type 2 diabetes',
          'Hypertension',
          'Heart disease',
          'All of the above'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Obesity is associated with an increased risk of various health conditions, including type 2 diabetes, hypertension (high blood pressure), heart disease, stroke, certain cancers, and sleep apnea. Managing weight through lifestyle modifications is essential for reducing the risk of obesity-related complications.',
      ),

      // Question 4
      QuizQuestionModel(
        question:
            'What role does physical activity play in obesity prevention?',
        options: [
          'Increases appetite and promotes weight gain',
          'Reduces muscle mass and increases body fat',
          'Burns calories and helps maintain a healthy weight',
          'Has no effect on body weight'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Physical activity plays a crucial role in obesity prevention by burning calories and helping maintain a healthy weight. Regular exercise can also improve cardiovascular health, strengthen muscles, and boost metabolism, contributing to overall well-being.',
      ),

      // Question 5
      QuizQuestionModel(
        question: 'How does a high-fiber diet contribute to weight management?',
        options: [
          'Increases calorie intake',
          'Promotes fat storage',
          'Helps control appetite and aids in weight loss',
          'Causes weight gain'
        ],
        correctAnswerIndex: 2,
        explanation:
            'A high-fiber diet helps control appetite and aids in weight loss by promoting feelings of fullness and reducing calorie intake. Fiber-rich foods, such as fruits, vegetables, whole grains, and legumes, are low in calories and provide essential nutrients, making them valuable for weight management.',
      ),

      // Question 6
      QuizQuestionModel(
        question:
            'What is the recommended rate of weight loss for individuals with obesity?',
        options: [
          '1-2 pounds per week',
          '3-5 pounds per week',
          'More than 5 pounds per week',
          'Weight loss is not recommended'
        ],
        correctAnswerIndex: 0,
        explanation:
            'The recommended rate of weight loss for individuals with obesity is 1-2 pounds per week. Rapid weight loss can be unsustainable and may lead to muscle loss, nutrient deficiencies, and other health complications. Gradual weight loss through healthy lifestyle changes is more effective and sustainable in the long term.',
      ),

      // Question 7
      QuizQuestionModel(
        question: 'What role does sleep play in obesity?',
        options: [
          'Increases metabolism and promotes weight loss',
          'Reduces appetite and promotes weight gain',
          'Has no effect on body weight',
          'Leads to muscle loss and fat gain'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Inadequate sleep can disrupt hormones that regulate appetite, leading to increased hunger and cravings, which may contribute to weight gain and obesity. Getting sufficient sleep is essential for overall health and weight management.',
      ),

      // Question 8
      QuizQuestionModel(
        question: 'Which type of fat is more likely to contribute to obesity?',
        options: [
          'Saturated fat',
          'Trans fat',
          'Monounsaturated fat',
          'Polyunsaturated fat'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Trans fat is more likely to contribute to obesity and other health problems compared to other types of fat. Trans fats are often found in processed and fried foods, baked goods, and margarine. Consumption of trans fat should be minimized to reduce the risk of obesity and cardiovascular disease.',
      ),

      // Question 9
      QuizQuestionModel(
        question: 'What is the primary cause of obesity?',
        options: [
          'Overeating and lack of physical activity',
          'Genetics and family history',
          'Metabolic disorders',
          'Stress and emotional factors'
        ],
        correctAnswerIndex: 0,
        explanation:
            'The primary cause of obesity is generally attributed to a combination of overeating and lack of physical activity. Consuming more calories than the body burns leads to weight gain over time, resulting in obesity.',
      ),

      // Question 10
      QuizQuestionModel(
        question: 'How does excessive sugar consumption contribute to obesity?',
        options: [
          'Decreases appetite and promotes weight loss',
          'Increases fat storage and risk of metabolic disorders',
          'Has no impact on body weight',
          'Promotes muscle growth and fat loss'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Excessive sugar consumption can contribute to obesity by increasing fat storage in the body and raising the risk of metabolic disorders such as insulin resistance and type 2 diabetes. Sugary foods and beverages often contain empty calories and lack essential nutrients, making them detrimental to weight management.',
      ),

      // Question 11
      QuizQuestionModel(
        question:
            'Which of the following hormones regulates hunger and satiety?',
        options: ['Insulin', 'Leptin', 'Ghrelin', 'Cortisol'],
        correctAnswerIndex: 2,
        explanation:
            'Ghrelin is known as the "hunger hormone" because it stimulates appetite and promotes food intake. It is produced in the stomach and sends signals to the brain to increase hunger before meals and decrease after eating. Leptin, on the other hand, is known as the "satiety hormone" and helps regulate energy balance by inhibiting hunger and promoting feelings of fullness.',
      ),

      // Question 12
      QuizQuestionModel(
        question: 'What effect does stress have on obesity?',
        options: [
          'Reduces appetite and promotes weight loss',
          'Increases cortisol levels and promotes weight gain',
          'Has no impact on body weight',
          'Stimulates metabolism and fat burning'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Stress can contribute to obesity by increasing cortisol levels, which in turn may lead to weight gain, particularly abdominal fat accumulation. Chronic stress can disrupt appetite regulation, promote overeating, and contribute to unhealthy behaviors such as emotional eating, all of which can contribute to obesity over time.',
      ),

      // Question 13
      QuizQuestionModel(
        question: 'What is the role of leptin in obesity?',
        options: [
          'Increases appetite and promotes weight gain',
          'Inhibits hunger and promotes weight loss',
          'Has no effect on body weight',
          'Regulates blood sugar levels'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Leptin, known as the "satiety hormone," plays a key role in regulating energy balance by inhibiting hunger and promoting feelings of fullness. It is produced by fat cells and acts on the brain to regulate food intake and energy expenditure. However, leptin resistance can occur in obesity, leading to reduced sensitivity to its effects and contributing to continued overeating and weight gain.',
      ),

      // Question 14
      QuizQuestionModel(
        question: 'How does the environment influence obesity?',
        options: [
          'Promotes healthy eating habits and physical activity',
          'Encourages sedentary behavior and unhealthy food choices',
          'Has no impact on body weight',
          'Increases metabolism and energy expenditure'
        ],
        correctAnswerIndex: 1,
        explanation:
            'The environment can influence obesity by promoting sedentary behavior and unhealthy food choices, such as the availability of high-calorie, low-nutrient foods and beverages, reduced opportunities for physical activity, and built environments that discourage active lifestyles. Addressing environmental factors is essential for creating supportive environments that facilitate healthy behaviors and prevent obesity.',
      ),

      // Question 15
      QuizQuestionModel(
        question: 'What is the impact of socioeconomic status on obesity?',
        options: [
          'Higher socioeconomic status is associated with lower obesity rates',
          'There is no relationship between socioeconomic status and obesity',
          'Lower socioeconomic status is associated with lower obesity rates',
          'Socioeconomic status has no impact on body weight'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Higher socioeconomic status is often associated with lower obesity rates, as individuals with greater financial resources may have better access to healthy food options, recreational facilities, and healthcare services. Conversely, lower socioeconomic status may be linked to limited access to nutritious foods, higher levels of stress, and fewer opportunities for physical activity, contributing to higher obesity rates.',
      ),

      // Question 16
      QuizQuestionModel(
        question: 'How does binge eating disorder contribute to obesity?',
        options: [
          'Decreases calorie intake and promotes weight loss',
          'Increases calorie intake and promotes weight gain',
          'Has no impact on body weight',
          'Leads to muscle gain and fat loss'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Binge eating disorder involves recurrent episodes of consuming large quantities of food in a short period, accompanied by feelings of loss of control and distress. It can contribute to obesity by significantly increasing calorie intake and promoting weight gain over time. Binge eating disorder is associated with emotional and psychological factors and often requires specialized treatment to address.',
      ),

      // Question 17
      QuizQuestionModel(
        question: 'What is the role of genetics in obesity?',
        options: [
          'Genetics play a minor role in obesity',
          'Genetics have no influence on body weight',
          'Genetics play a significant role in obesity',
          'Genetics only affect muscle mass, not fat'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Genetics play a significant role in obesity, influencing factors such as metabolic rate, fat storage, appetite regulation, and body composition. While genetic predispositions can increase the likelihood of obesity, lifestyle factors such as diet, physical activity, and environmental influences also interact with genetic factors to determine individual weight status.',
      ),

      // Question 18
      QuizQuestionModel(
        question:
            'Which type of obesity is characterized by excess abdominal fat?',
        options: [
          'Android obesity',
          'Gynoid obesity',
          'Subcutaneous obesity',
          'Visceral obesity'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Visceral obesity, also known as central obesity or android obesity, is characterized by excess fat accumulation in the abdominal cavity, surrounding internal organs such as the liver, pancreas, and intestines. This type of obesity is associated with an increased risk of metabolic syndrome, type 2 diabetes, cardiovascular disease, and other health complications.',
      ),

      // Question 19
      QuizQuestionModel(
        question:
            'What dietary approach is recommended for obesity management?',
        options: [
          'Low-carbohydrate diet',
          'High-protein diet',
          'Balanced diet with portion control',
          'Juice cleanse diet'
        ],
        correctAnswerIndex: 2,
        explanation:
            'A balanced diet with portion control is recommended for obesity management, emphasizing the consumption of nutrient-dense foods such as fruits, vegetables, whole grains, lean proteins, and healthy fats. Portion control helps manage calorie intake and promotes weight loss while ensuring adequate nutrient intake for overall health and well-being.',
      ),

      // Question 20
      QuizQuestionModel(
        question: 'What is the primary treatment approach for severe obesity?',
        options: [
          'Medication therapy',
          'Surgery (bariatric surgery)',
          'Dietary supplements',
          'Psychotherapy'
        ],
        correctAnswerIndex: 1,
        explanation:
            'For severe obesity that poses significant health risks, bariatric surgery (weight loss surgery) may be recommended as a primary treatment approach. Bariatric procedures such as gastric bypass, sleeve gastrectomy, and gastric banding can lead to substantial and sustained weight loss, improvement in obesity-related health conditions, and enhanced quality of life for eligible individuals.',
      ),
      // Question 21
      QuizQuestionModel(
        question:
            'What is the role of physical activity in obesity prevention?',
        options: [
          'Has no impact on body weight',
          'Increases appetite and promotes weight gain',
          'Promotes calorie expenditure and supports weight management',
          'Reduces metabolism and promotes fat storage'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Physical activity plays a crucial role in obesity prevention by promoting calorie expenditure, supporting weight management, improving metabolic health, and reducing the risk of weight gain over time. Regular exercise helps burn calories, build muscle mass, enhance metabolism, and improve overall health and well-being.',
      ),

// Question 22
      QuizQuestionModel(
        question: 'What factors contribute to childhood obesity?',
        options: [
          'Genetics and family history',
          'Poor diet and lack of physical activity',
          'Socioeconomic status and environmental factors',
          'All of the above'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Childhood obesity is influenced by multiple factors, including genetics and family history, dietary habits, physical activity levels, socioeconomic status, access to healthy foods, and environmental influences. Addressing these factors through comprehensive strategies is essential for preventing and managing childhood obesity.',
      ),

// Question 23
      QuizQuestionModel(
        question: 'What health complications are associated with obesity?',
        options: [
          'Type 1 diabetes',
          'Hypertension (high blood pressure)',
          'Osteoporosis',
          'Gallstones'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Obesity is associated with numerous health complications, including hypertension (high blood pressure), type 2 diabetes, heart disease, stroke, certain cancers, sleep apnea, osteoarthritis, fatty liver disease, kidney disease, and mental health disorders. These conditions can significantly impact quality of life and increase the risk of premature death.',
      ),

// Question 24
      QuizQuestionModel(
        question: 'What role does sleep play in obesity?',
        options: [
          'Increases metabolism and promotes weight loss',
          'Has no impact on body weight',
          'Promotes appetite regulation and supports weight management',
          'Leads to muscle loss and fat gain'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Adequate sleep is essential for maintaining a healthy weight and preventing obesity. Sleep helps regulate appetite hormones, such as leptin and ghrelin, that control hunger and fullness signals. Chronic sleep deprivation can disrupt these hormones, increase appetite, promote overeating, and contribute to weight gain over time.',
      ),

// Question 25
      QuizQuestionModel(
        question: 'What is the impact of advertising on obesity?',
        options: [
          'Encourages healthy food choices and physical activity',
          'Has no influence on dietary behaviors',
          'Promotes consumption of unhealthy foods and beverages',
          'Increases awareness of obesity prevention strategies'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Advertising, particularly for unhealthy foods and beverages high in sugar, salt, and fat, can influence dietary behaviors, food preferences, and consumption patterns, especially among children and adolescents. Exposure to marketing of unhealthy products can contribute to overconsumption, poor dietary habits, and increased risk of obesity and related health problems.',
      ),

// Question 26
      QuizQuestionModel(
        question: 'What is the impact of portion sizes on obesity?',
        options: [
          'Has no effect on body weight',
          'Larger portion sizes lead to increased calorie intake',
          'Smaller portion sizes promote weight gain',
          'Portion sizes only affect muscle mass, not fat'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Larger portion sizes often lead to increased calorie intake, as individuals may consume more food than needed or intended. Over time, frequent consumption of large portions can contribute to excess calorie intake, weight gain, and obesity. Managing portion sizes and practicing portion control are important strategies for weight management and preventing overeating.',
      ),

// Question 27
      QuizQuestionModel(
        question:
            'What is the impact of dieting on long-term weight management?',
        options: [
          'Leads to sustainable weight loss and maintenance',
          'Promotes short-term weight loss but often results in weight regain',
          'Has no impact on body weight',
          'Increases metabolism and supports fat loss'
        ],
        correctAnswerIndex: 1,
        explanation:
            'While dieting can lead to short-term weight loss, many people experience weight regain over time, as restrictive diets may be difficult to maintain in the long term. Yo-yo dieting, or weight cycling, can negatively impact metabolism, promote unhealthy eating patterns, and contribute to fluctuations in body weight. Sustainable lifestyle changes that focus on balanced eating and regular physical activity are more effective for long-term weight management.',
      ),

// Question 28
      QuizQuestionModel(
        question: 'What is the impact of skipping meals on weight management?',
        options: [
          'Promotes weight loss and reduces calorie intake',
          'Has no effect on body weight',
          'Leads to increased hunger and overeating later in the day',
          'Boosts metabolism and supports fat burning'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Skipping meals, especially breakfast, can lead to increased hunger, cravings, and overeating later in the day, as well as disruptions in blood sugar levels and energy balance. This can result in excess calorie intake, poor food choices, and difficulty managing weight. Eating regular, balanced meals throughout the day supports appetite control, energy balance, and overall well-being.',
      ),

// Question 29
      QuizQuestionModel(
        question: 'What is the role of stress in obesity?',
        options: [
          'Reduces appetite and promotes weight loss',
          'Has no impact on body weight',
          'Increases cortisol levels and may contribute to weight gain',
          'Boosts metabolism and supports fat burning'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Chronic stress can increase levels of the hormone cortisol, which may lead to increased appetite, cravings for high-calorie foods, and abdominal fat deposition. Stress-related eating behaviors, emotional eating, and coping mechanisms can contribute to overeating, weight gain, and obesity. Managing stress through relaxation techniques, physical activity, and healthy coping strategies is important for weight management and overall health.',
      ),

// Question 30
      QuizQuestionModel(
        question:
            'What is the impact of socioeconomic status on obesity rates?',
        options: [
          'Has no influence on obesity risk',
          'Higher socioeconomic status is associated with lower obesity rates',
          'Lower socioeconomic status is associated with higher obesity rates',
          'Obesity rates are similar across all socioeconomic levels'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Lower socioeconomic status is often associated with higher obesity rates due to factors such as limited access to healthy foods, higher prevalence of food insecurity, lower levels of physical activity, limited opportunities for recreation, and greater exposure to environmental and social determinants of health. Addressing socioeconomic disparities and implementing policies to promote health equity are essential for addressing obesity and improving population health outcomes.',
      ),

// Question 31
      QuizQuestionModel(
        question:
            'Which population group has the highest prevalence of obesity in the United States?',
        options: [
          'Children aged 2-5 years',
          'Adolescents aged 12-19 years',
          'Adults aged 20-39 years',
          'Adults aged 40-59 years'
        ],
        correctAnswerIndex: 4,
        explanation:
            'Among adults in the United States, those aged 40-59 years have the highest prevalence of obesity. Obesity rates tend to increase with age, peaking in middle adulthood before gradually declining in older age groups. However, obesity remains a significant public health concern across all age groups, with implications for chronic disease risk, healthcare costs, and overall well-being.',
      ),

// Question 32
      QuizQuestionModel(
        question:
            'What is the impact of parental influence on childhood obesity?',
        options: [
          'Parents have no influence on children\'s dietary behaviors',
          'Parental modeling of healthy behaviors reduces obesity risk',
          'Parental feeding practices have no impact on children\'s weight',
          'Parents play a role in shaping children\'s eating habits and lifestyle choices'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Parents play a critical role in shaping children\'s eating habits, physical activity levels, and lifestyle choices, which can significantly influence obesity risk and long-term health outcomes. Modeling healthy behaviors, providing nutritious meals and snacks, encouraging physical activity, and creating supportive home environments are essential for promoting healthy weight development and preventing childhood obesity.',
      ),

// Question 33
      QuizQuestionModel(
        question: 'What is the impact of breastfeeding on obesity risk?',
        options: [
          'Breastfeeding has no effect on obesity risk',
          'Breastfeeding reduces the risk of childhood obesity',
          'Formula feeding is associated with lower obesity risk',
          'Breastfeeding increases the risk of childhood obesity'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Breastfeeding has been shown to reduce the risk of childhood obesity by promoting healthy growth, providing optimal nutrition, and supporting the development of metabolic and immune systems. Breast milk contains a unique combination of nutrients, bioactive compounds, and antibodies that help protect against infections and chronic diseases while promoting optimal weight gain and development in infants and young children.',
      ),

// Question 34
      QuizQuestionModel(
        question: 'What is the impact of food marketing on childhood obesity?',
        options: [
          'Has no influence on dietary behaviors',
          'Encourages consumption of healthy foods',
          'Promotes consumption of unhealthy foods and beverages',
          'Increases awareness of obesity prevention strategies'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Food marketing, especially for unhealthy products high in sugar, salt, and fat, can influence children\'s dietary behaviors, food preferences, and consumption patterns. Exposure to marketing of unhealthy foods and beverages through television, digital media, product packaging, and promotional activities can contribute to overconsumption, poor dietary habits, and increased risk of obesity and related health problems among children and adolescents.',
      ),

// Question 35
      QuizQuestionModel(
        question:
            'What is the impact of school nutrition programs on childhood obesity?',
        options: [
          'Has no effect on obesity rates',
          'Promotes healthy eating habits and reduces obesity risk',
          'Increases consumption of unhealthy foods',
          'Contributes to weight gain in children'
        ],
        correctAnswerIndex: 1,
        explanation:
            'School nutrition programs, such as school meals and nutrition education initiatives, play a critical role in promoting healthy eating habits, improving dietary quality, and reducing obesity risk among children and adolescents. These programs provide access to nutritious meals, teach essential nutrition skills, and create supportive environments that encourage healthy food choices and behaviors both at school and beyond.',
      ),

// Question 36
      QuizQuestionModel(
        question: 'What is the impact of screen time on obesity risk?',
        options: [
          'Has no effect on body weight',
          'Increased screen time is associated with lower obesity risk',
          'Reduced screen time is associated with higher obesity risk',
          'Excessive screen time is linked to increased obesity risk'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Excessive screen time, particularly sedentary activities such as watching television, using computers, playing video games, and using smartphones or tablets, is associated with increased obesity risk among children and adolescents. Screen time often displaces physical activity, promotes sedentary behaviors, increases exposure to food advertising, and disrupts sleep patterns, all of which can contribute to weight gain and obesity over time.',
      ),

// Question 37
      QuizQuestionModel(
        question: 'What is the impact of fast food consumption on obesity?',
        options: [
          'Fast food consumption has no effect on body weight',
          'Fast food consumption is associated with lower obesity risk',
          'Frequent fast food consumption is linked to higher obesity risk',
          'Fast food consumption only affects adults, not children'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Frequent consumption of fast food, which is often high in calories, unhealthy fats, salt, and sugar, is associated with higher obesity risk and poor dietary quality among children, adolescents, and adults. Fast food meals tend to be energy-dense and nutrient-poor, providing excess calories without essential nutrients, which can contribute to weight gain, obesity, and related health problems over time.',
      ),

// Question 38
      QuizQuestionModel(
        question: 'What is the impact of community design on obesity rates?',
        options: [
          'Has no effect on obesity risk',
          'Pedestrian-friendly communities promote physical activity and reduce obesity risk',
          'Car-dependent communities have lower obesity rates',
          'Community design does not influence physical activity levels'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Community design plays a significant role in shaping physical activity levels, transportation choices, and obesity rates among residents. Pedestrian-friendly communities with accessible sidewalks, bike paths, parks, recreational facilities, and mixed land uses promote active living, encourage walking and cycling, and support healthy lifestyles. In contrast, car-dependent communities with limited infrastructure for active transportation may have higher rates of sedentary behavior, obesity, and chronic diseases.',
      ),

// Question 39
      QuizQuestionModel(
        question: 'What is the impact of sleep duration on obesity risk?',
        options: [
          'Has no effect on body weight',
          'Short sleep duration is associated with lower obesity risk',
          'Long sleep duration is associated with higher obesity risk',
          'Sleep duration has no influence on weight management'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Both short and long sleep durations have been associated with increased obesity risk and adverse metabolic health outcomes. Insufficient sleep, defined as less than 7 hours per night for adults, can disrupt appetite-regulating hormones, increase hunger and cravings, alter metabolism, and impair glucose regulation, all of which contribute to weight gain and obesity. Consistent, adequate sleep duration is essential for overall health and well-being, including weight management and obesity prevention.',
      ),

// Question 40
      QuizQuestionModel(
        question: 'What is the impact of urbanization on obesity rates?',
        options: [
          'Urban areas have higher obesity rates than rural areas',
          'Rural areas have higher obesity rates than urban areas',
          'Obesity rates are similar in urban and rural areas',
          'Urbanization has no effect on obesity risk'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Urbanization, characterized by changes in lifestyle, diet, physical activity, and built environments, has been associated with increased obesity rates in rural areas due to shifts in dietary patterns, reduced physical activity, increased sedentary behaviors, and limited access to healthy foods and recreational facilities. These changes, coupled with socioeconomic disparities, environmental influences, and cultural factors, contribute to the obesity epidemic in both urban and rural communities.',
      ),
    ];
  } else if (category == 'Diabetes') {
    loadedQuestions = [
      // Question 1
      QuizQuestionModel(
          question: 'What is diabetes?',
          options: [
            'A bacterial infection',
            'A viral disease',
            'A chronic condition characterized by high blood sugar levels',
            'A type of cancer'
          ],
          correctAnswerIndex: 2,
          explanation:
              'Diabetes is a chronic condition characterized by high levels of sugar (glucose) in the blood, either because the body produces insufficient insulin or because cells do not respond to the insulin that is produced.'),

      // Question 2
      QuizQuestionModel(
          question:
              'Which hormone is responsible for regulating blood sugar levels?',
          options: ['Estrogen', 'Insulin', 'Testosterone', 'Thyroxine'],
          correctAnswerIndex: 1,
          explanation:
              'Insulin is a hormone produced by the pancreas that helps regulate blood sugar levels by facilitating the uptake of glucose into cells.'),

      // Question 3
      QuizQuestionModel(
          question: 'What are the two main types of diabetes?',
          options: [
            'Type A and Type B',
            'Juvenile diabetes and adult-onset diabetes',
            'Type 1 and Type 2',
            'Gestational diabetes and pre-diabetes'
          ],
          correctAnswerIndex: 2,
          explanation:
              'The two main types of diabetes are Type 1 diabetes, which is characterized by the body\'s inability to produce insulin, and Type 2 diabetes, which is characterized by insulin resistance and relative insulin deficiency.'),

      // Question 4
      QuizQuestionModel(
          question:
              'Which of the following is a risk factor for Type 2 diabetes?',
          options: [
            'Being underweight',
            'Regular physical activity',
            'Family history of diabetes',
            'Low carbohydrate intake'
          ],
          correctAnswerIndex: 2,
          explanation:
              'A family history of diabetes increases the risk of developing Type 2 diabetes, as genetics can play a significant role in predisposing individuals to the condition.'),

      // Question 5
      QuizQuestionModel(
          question: 'What is insulin resistance?',
          options: [
            'The body\'s inability to produce insulin',
            'The body\'s inability to utilize insulin effectively',
            'A condition characterized by low blood sugar levels',
            'An autoimmune response against insulin-producing cells'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Insulin resistance occurs when cells in the body do not respond effectively to insulin, leading to elevated blood sugar levels and an increased risk of Type 2 diabetes.'),

      // Question 6
      QuizQuestionModel(
          question: 'What are the symptoms of diabetes?',
          options: [
            'Excessive thirst, frequent urination, and unexplained weight loss',
            'Fever, chills, and sore throat',
            'Chest pain, shortness of breath, and palpitations',
            'Nausea, vomiting, and abdominal pain'
          ],
          correctAnswerIndex: 0,
          explanation:
              'Common symptoms of diabetes include excessive thirst, frequent urination, unexplained weight loss, fatigue, blurred vision, and slow wound healing.'),

      // Question 7
      QuizQuestionModel(
          question: 'What is HbA1c?',
          options: [
            'A type of insulin',
            'A blood pressure medication',
            'A measure of average blood glucose levels over the past 2-3 months',
            'A cholesterol-lowering drug'
          ],
          correctAnswerIndex: 2,
          explanation:
              'HbA1c, also known as glycated hemoglobin, is a measure of average blood glucose levels over the past 2-3 months. It is used to assess long-term blood sugar control in individuals with diabetes.'),

      // Question 8
      QuizQuestionModel(
          question: 'How is Type 1 diabetes treated?',
          options: [
            'Oral medications',
            'Insulin injections or insulin pump therapy',
            'Diet and exercise alone',
            'Surgery'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Type 1 diabetes is treated with insulin injections or insulin pump therapy, as the body is unable to produce insulin on its own.'),

      // Question 9
      QuizQuestionModel(
          question: 'What is diabetic ketoacidosis (DKA)?',
          options: [
            'A type of insulin',
            'A severe complication of diabetes characterized by high blood sugar levels, ketosis, and metabolic acidosis',
            'A blood test used to diagnose diabetes',
            'A condition caused by low blood sugar levels'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Diabetic ketoacidosis (DKA) is a life-threatening complication of diabetes characterized by high blood sugar levels, ketosis (accumulation of ketones), and metabolic acidosis. It requires immediate medical attention and treatment with intravenous fluids and insulin.'),

      // Question 10
      QuizQuestionModel(
          question: 'What is hypoglycemia?',
          options: [
            'High blood sugar levels',
            'Low blood sugar levels',
            'An autoimmune response against insulin-producing cells',
            'A chronic complication of diabetes'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Hypoglycemia occurs when blood sugar levels drop below normal levels, leading to symptoms such as shakiness, sweating, confusion, and dizziness. It can be caused by excessive insulin or oral diabetes medications, delayed or skipped meals, or increased physical activity.'),

      // Question 11
      QuizQuestionModel(
          question: 'What is the dawn phenomenon in diabetes?',
          options: [
            'A sudden drop in blood sugar levels during the early morning hours',
            'An increase in blood sugar levels during the early morning hours due to the release of counterregulatory hormones',
            'A condition characterized by frequent urination during the night',
            'A complication of diabetes characterized by blurred vision upon waking up'
          ],
          correctAnswerIndex: 1,
          explanation:
              'The dawn phenomenon refers to an increase in blood sugar levels during the early morning hours, typically between 2:00 AM and 8:00 AM, due to the release of counterregulatory hormones, such as cortisol and growth hormone. It is a normal physiological response but may be exaggerated in individuals with diabetes.'),

      // Question 12
      QuizQuestionModel(
          question: 'What is diabetic retinopathy?',
          options: [
            'A condition characterized by high blood sugar levels',
            'A complication of diabetes affecting the eyes',
            'A type of insulin',
            'An autoimmune response against insulin-producing cells'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Diabetic retinopathy is a complication of diabetes that affects the blood vessels in the retina, the light-sensitive tissue at the back of the eye. It can lead to vision loss and blindness if left untreated.'),

      // Question 13
      QuizQuestionModel(
          question:
              'What is the recommended blood pressure target for individuals with diabetes?',
          options: [
            'Less than 120/80 mmHg',
            'Less than 130/80 mmHg',
            'Less than 140/90 mmHg',
            'Less than 150/90 mmHg'
          ],
          correctAnswerIndex: 1,
          explanation:
              'The recommended blood pressure target for individuals with diabetes is less than 130/80 mmHg to reduce the risk of cardiovascular complications.'),

      // Question 14
      QuizQuestionModel(
          question: 'What is peripheral neuropathy?',
          options: [
            'A condition characterized by high blood sugar levels',
            'A complication of diabetes affecting the nerves',
            'A type of insulin',
            'An autoimmune response against insulin-producing cells'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Peripheral neuropathy is a complication of diabetes that affects the nerves, particularly those in the extremities such as the feet and hands. It can cause symptoms such as numbness, tingling, burning sensations, and weakness.'),

      // Question 15
      QuizQuestionModel(
          question: 'What is diabetic nephropathy?',
          options: [
            'A condition characterized by high blood sugar levels',
            'A complication of diabetes affecting the kidneys',
            'A type of insulin',
            'An autoimmune response against insulin-producing cells'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Diabetic nephropathy is a complication of diabetes that affects the kidneys, leading to kidney damage and dysfunction. It is a leading cause of end-stage renal disease (ESRD) and may require dialysis or kidney transplantation.'),

      // Question 16
      QuizQuestionModel(
          question: 'What is the best way to prevent diabetes?',
          options: [
            'Eating a diet high in processed foods and sugar',
            'Maintaining a healthy weight and engaging in regular physical activity',
            'Smoking cigarettes',
            'Consuming excessive amounts of alcohol'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Maintaining a healthy weight, following a balanced diet, and engaging in regular physical activity are key lifestyle factors that can help prevent or delay the onset of Type 2 diabetes.'),

      // Question 17
      QuizQuestionModel(
          question: 'What is the role of genetics in diabetes?',
          options: [
            'Genetics play no role in diabetes',
            'Genetics can increase the risk of Type 1 diabetes but not Type 2 diabetes',
            'Genetics can increase the risk of Type 2 diabetes but not Type 1 diabetes',
            'Genetics can influence the risk of both Type 1 and Type 2 diabetes'
          ],
          correctAnswerIndex: 3,
          explanation:
              'Genetics can influence the risk of both Type 1 and Type 2 diabetes, although Type 2 diabetes is more strongly influenced by genetic factors such as family history, ethnicity, and genetic susceptibility.'),

      // Question 18
      QuizQuestionModel(
          question: 'What is the role of diet in managing diabetes?',
          options: [
            'Eating a diet high in sugar and processed foods is recommended',
            'Following a balanced diet that includes whole grains, fruits, vegetables, lean proteins, and healthy fats',
            'Consuming large meals infrequently',
            'Skipping meals is beneficial for blood sugar control'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Following a balanced diet that includes whole grains, fruits, vegetables, lean proteins, and healthy fats is essential for managing blood sugar levels and preventing complications in individuals with diabetes.'),

      // Question 19
      QuizQuestionModel(
          question: 'What is the Somogyi effect?',
          options: [
            'A sudden drop in blood sugar levels during the night',
            'An increase in blood sugar levels during the night due to the release of counterregulatory hormones',
            'A condition characterized by frequent urination during the night',
            'A complication of diabetes characterized by blurred vision upon waking up'
          ],
          correctAnswerIndex: 1,
          explanation:
              'The Somogyi effect, also known as rebound hyperglycemia, refers to an increase in blood sugar levels during the night due to the release of counterregulatory hormones, such as cortisol and growth hormone, in response to nocturnal hypoglycemia (low blood sugar levels).'),

      // Question 20
      QuizQuestionModel(
          question: 'What is the role of exercise in managing diabetes?',
          options: [
            'Regular exercise is not recommended for individuals with diabetes',
            'Regular exercise helps improve insulin sensitivity, lower blood sugar levels, and manage weight',
            'Exercise increases the risk of hypoglycemia in individuals with diabetes',
            'Exercise has no impact on blood sugar levels'
          ],
          correctAnswerIndex: 1,
          explanation:
              'Regular exercise helps improve insulin sensitivity, lower blood sugar levels, manage weight, and reduce the risk of cardiovascular complications in individuals with diabetes. It is an essential component of diabetes management.'),

      // Question 21
      QuizQuestionModel(
        question: 'What is diabetes?',
        options: [
          'A condition in which the body cannot produce insulin',
          'A condition in which the body cannot use insulin effectively',
          'A condition in which the body has high blood sugar levels',
          'All of the above'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Diabetes is a chronic condition characterized by high blood sugar levels resulting from the body\'s inability to produce or use insulin effectively. Insulin is a hormone that helps regulate blood sugar and allows cells to use glucose for energy. There are different types of diabetes, including type 1, type 2, and gestational diabetes, each with distinct causes, symptoms, and management strategies.',
      ),

      // Question 22
      QuizQuestionModel(
        question: 'What are the symptoms of diabetes?',
        options: [
          'Frequent urination, excessive thirst, unexplained weight loss',
          'Blurred vision, slow wound healing, fatigue',
          'Numbness or tingling in hands or feet, recurrent infections',
          'All of the above'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Common symptoms of diabetes include frequent urination, excessive thirst, unexplained weight loss, blurred vision, slow wound healing, fatigue, numbness or tingling in hands or feet, and recurrent infections. These symptoms may vary depending on the type of diabetes and the individual\'s blood sugar levels. Early detection and management of diabetes are essential for preventing complications and improving quality of life.',
      ),

      // Question 23
      QuizQuestionModel(
        question: 'What is the role of insulin in diabetes?',
        options: [
          'Insulin helps lower blood sugar levels',
          'Insulin promotes weight loss',
          'Insulin increases blood sugar levels',
          'Insulin has no effect on blood sugar levels'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Insulin is a hormone produced by the pancreas that helps lower blood sugar levels by facilitating the uptake of glucose from the bloodstream into cells for energy production and storage. In diabetes, the body either does not produce enough insulin (type 1 diabetes) or cannot use insulin effectively (type 2 diabetes), leading to elevated blood sugar levels and metabolic imbalances.',
      ),

      // Question 24
      QuizQuestionModel(
        question: 'What is the difference between type 1 and type 2 diabetes?',
        options: [
          'Type 1 diabetes is more common in adults, while type 2 diabetes is more common in children',
          'Type 1 diabetes is an autoimmune condition, while type 2 diabetes is related to lifestyle factors',
          'Type 1 diabetes can be prevented through diet and exercise, while type 2 diabetes cannot',
          'Type 1 diabetes is reversible, while type 2 diabetes is not'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Type 1 diabetes is an autoimmune condition in which the immune system attacks and destroys insulin-producing beta cells in the pancreas, leading to insulin deficiency and high blood sugar levels. Type 2 diabetes, on the other hand, is related to lifestyle factors such as obesity, physical inactivity, and poor diet, and is characterized by insulin resistance and impaired insulin secretion. Both types of diabetes require lifelong management but may have different treatment approaches.',
      ),

      // Question 25
      QuizQuestionModel(
        question: 'What are the risk factors for type 2 diabetes?',
        options: [
          'Family history of diabetes, obesity, sedentary lifestyle',
          'High blood pressure, smoking, excessive alcohol consumption',
          'Older age, gestational diabetes, polycystic ovary syndrome',
          'All of the above'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Risk factors for type 2 diabetes include family history of diabetes, obesity, sedentary lifestyle, unhealthy diet, high blood pressure, smoking, excessive alcohol consumption, older age, gestational diabetes, and conditions such as polycystic ovary syndrome (PCOS). Addressing modifiable risk factors through lifestyle modifications and regular health screenings can help prevent or delay the onset of type 2 diabetes.',
      ),

      // Question 26
      QuizQuestionModel(
        question: 'How is diabetes diagnosed?',
        options: [
          'Fasting blood sugar test, oral glucose tolerance test, A1C test',
          'Blood pressure measurement, cholesterol test, kidney function test',
          'Physical examination, urine analysis, eye exam',
          'All of the above'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Diabetes is diagnosed through various tests, including fasting blood sugar test, oral glucose tolerance test, and A1C test, which measure blood sugar levels and assess glucose metabolism. Additional tests such as blood pressure measurement, cholesterol test, kidney function test, physical examination, urine analysis, and eye exam may be performed to evaluate diabetes-related complications and overall health status.',
      ),

      // Question 27

      QuizQuestionModel(
        question: 'What is the treatment for type 1 diabetes?',
        options: [
          'Insulin therapy, blood sugar monitoring, carbohydrate counting',
          'Oral medications, lifestyle modifications, weight loss',
          'Dietary supplements, herbal remedies, acupuncture',
          'Surgery, radiation therapy, chemotherapy'
        ],
        correctAnswerIndex: 0,
        explanation:
            'The primary treatment for type 1 diabetes is insulin therapy, which involves regular injections or use of an insulin pump to replace the insulin that the body cannot produce. Blood sugar monitoring, carbohydrate counting, healthy eating, regular physical activity, and close medical supervision are essential components of managing type 1 diabetes and preventing complications.',
      ),

      // Question 28
      QuizQuestionModel(
        question: 'What is the treatment for type 2 diabetes?',
        options: [
          'Lifestyle modifications, oral medications, insulin therapy',
          'Dietary supplements, herbal remedies, acupuncture',
          'Surgery, radiation therapy, chemotherapy',
          'Blood sugar monitoring, carbohydrate counting, weight loss'
        ],
        correctAnswerIndex: 0,
        explanation:
            'The treatment for type 2 diabetes typically involves lifestyle modifications, including healthy eating, regular physical activity, weight management, and blood sugar monitoring, as well as oral medications and, in some cases, insulin therapy. Individualized treatment plans are based on blood sugar levels, health status, complications, and other factors, with the goal of achieving optimal blood sugar control and preventing long-term complications.',
      ),

      // Question 29
      QuizQuestionModel(
        question: 'What is the impact of diet on diabetes management?',
        options: [
          'A balanced diet with portion control helps regulate blood sugar levels',
          'High-protein, low-carbohydrate diets are recommended for diabetes',
          'Fasting or detox diets are effective for managing diabetes',
          'Diet has no effect on blood sugar control'
        ],
        correctAnswerIndex: 0,
        explanation:
            'A balanced diet with portion control, focusing on nutrient-dense foods such as fruits, vegetables, whole grains, lean proteins, and healthy fats, is essential for managing diabetes and regulating blood sugar levels. Carbohydrate counting, meal planning, and mindful eating can help individuals with diabetes achieve optimal blood sugar control, maintain a healthy weight, and reduce the risk of complications.',
      ),

      // Question 30
      QuizQuestionModel(
        question:
            'What is the impact of physical activity on diabetes management?',
        options: [
          'Regular exercise helps lower blood sugar levels and improve insulin sensitivity',
          'Physical activity has no effect on blood sugar control',
          'High-intensity workouts are recommended for diabetes management',
          'Sedentary lifestyle is beneficial for diabetes'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Regular physical activity, including aerobic exercise, strength training, flexibility exercises, and recreational activities, helps lower blood sugar levels, improve insulin sensitivity, manage weight, reduce cardiovascular risk, and enhance overall health and well-being in individuals with diabetes. Exercise should be tailored to individual preferences, fitness levels, health status, and treatment goals to maximize benefits and minimize risks.',
      )
    ];
  } else if (category == 'Hepatitis') {
    loadedQuestions = [
      // Question 1
      QuizQuestionModel(
        question: 'What is hepatitis?',
        options: [
          'A bacterial infection',
          'A viral disease',
          'A type of cancer',
          'An autoimmune condition'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Hepatitis is a viral infection that causes inflammation of the liver. There are several types of hepatitis viruses, including hepatitis A, B, C, D, and E, each with distinct modes of transmission, symptoms, and treatment options.',
      ),

      // Question 2
      QuizQuestionModel(
        question: 'What are the common symptoms of hepatitis?',
        options: [
          'Jaundice, fatigue, abdominal pain',
          'Fever, cough, sore throat',
          'Nausea, vomiting, diarrhea',
          'Headache, muscle aches, joint pain'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Common symptoms of hepatitis include jaundice (yellowing of the skin and eyes), fatigue, abdominal pain, nausea, vomiting, dark urine, pale stools, and loss of appetite. Some individuals with hepatitis may also experience fever, joint pain, muscle aches, and other flu-like symptoms.',
      ),

      // Question 3
      QuizQuestionModel(
        question: 'How is hepatitis transmitted?',
        options: [
          'Through contaminated food and water',
          'Through sexual contact',
          'Through blood and body fluids',
          'All of the above'
        ],
        correctAnswerIndex: 3,
        explanation:
            'Hepatitis viruses can be transmitted through various routes, including contaminated food and water (hepatitis A and E), sexual contact (hepatitis B and C), and exposure to infected blood and body fluids (hepatitis B, C, and D). Prevention strategies such as vaccination ',
      ),

      // Question 4
      QuizQuestionModel(
        question: 'What is the difference between acute and chronic hepatitis?',
        options: [
          'Acute hepatitis is a short-term infection, while chronic hepatitis lasts for more than six months',
          'Acute hepatitis is caused by hepatitis A virus, while chronic hepatitis is caused by hepatitis B and C viruses',
          'Acute hepatitis is more severe than chronic hepatitis',
          'Acute hepatitis requires hospitalization, while chronic hepatitis does not'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Acute hepatitis is a short-term infection that typically resolves on its own within a few weeks to months, while chronic hepatitis lasts for more than six months and may require long-term management. Chronic hepatitis is often caused by hepatitis B, C, or D viruses and can lead to liver damage, cirrhosis, and liver cancer if left untreated.',
      ),

      // Question 5
      QuizQuestionModel(
        question: 'How is hepatitis diagnosed?',
        options: [
          'Blood tests, liver function tests, viral hepatitis panel',
          'Imaging studies, liver biopsy, endoscopy',
          'Physical examination, medical history, symptom assessment',
          'All of the above'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Hepatitis is diagnosed through blood tests, liver function tests, and viral hepatitis panels that detect specific antibodies, antigens, and viral genetic material in the blood. Additional tests such as imaging studies, liver biopsy, and endoscopy may be performed to assess liver damage, stage liver disease, and guide treatment decisions.',
      ),

      // Question 6
      QuizQuestionModel(
        question: 'What is the treatment for hepatitis?',
        options: [
          'Antiviral medications, immune modulators, liver transplant',
          'Antibiotics, pain relievers, anti-inflammatory drugs',
          'Dietary supplements, herbal remedies, acupuncture',
          'Surgery, radiation therapy, chemotherapy'
        ],
        correctAnswerIndex: 0,
        explanation:
            'The treatment for hepatitis depends on the type of virus, severity of liver damage, and individual health status. Antiviral medications, immune modulators, and liver transplant may be used to manage chronic hepatitis and prevent complications such as cirrhosis and liver cancer. Lifestyle modifications, dietary changes, and regular medical monitoring are also important for managing hepatitis and promoting liver health.',
      ),

      // Question 7
      QuizQuestionModel(
        question: 'What is hepatitis A?',
        options: [
          'A sexually transmitted infection',
          'A foodborne illness',
          'A bloodborne virus',
          'An autoimmune condition'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Hepatitis A is a viral infection that is primarily transmitted through contaminated food and water. It causes acute liver inflammation and flu-like symptoms, such as jaundice, fatigue, nausea, and abdominal pain. Hepatitis A is preventable through vaccination and good hygiene practices, such as handwashing and safe food handling.',
      ),

      // Question 8
      QuizQuestionModel(
        question: 'What is hepatitis B?',
        options: [
          'A sexually transmitted infection',
          'A foodborne illness',
          'A bloodborne virus',
          'An autoimmune condition'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Hepatitis B is a bloodborne virus that is transmitted through exposure to infected blood and body fluids, such as during sexual contact, sharing needles, or from mother to child during childbirth. It can cause acute or chronic liver infection, leading to liver damage, cirrhosis, and liver cancer. Hepatitis B is preventable through vaccination and safe health practices.',
      ),

      // Question 9
      QuizQuestionModel(
        question: 'What is hepatitis C?',
        options: [
          'A sexually transmitted infection',
          'A foodborne illness',
          'A bloodborne virus',
          'An autoimmune condition'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Hepatitis C is a bloodborne virus that is primarily transmitted through exposure to infected blood, such as through sharing needles, blood transfusions, or medical procedures. It can cause chronic liver infection, leading to liver damage, cirrhosis, and liver cancer. Hepatitis C is curable with antiviral medications, but early detection and treatment are essential for preventing complications.',
      ),

      // Question 10
      QuizQuestionModel(
        question: 'What is hepatitis D?',
        options: [
          'A sexually transmitted infection',
          'A foodborne illness',
          'A bloodborne virus',
          'An autoimmune condition'
        ],
        correctAnswerIndex: 2,
        explanation:
            'Hepatitis D, also known as delta hepatitis, is a bloodborne virus that requires the presence of hepatitis B virus to replicate and cause infection. It can lead to severe liver damage and complications in individuals with chronic hepatitis B. Hepatitis D is preventable through hepatitis B vaccination and safe health practices.',
      ),

      // Question 11
      QuizQuestionModel(
        question: 'What is hepatitis E?',
        options: [
          'A sexually transmitted infection',
          'A foodborne illness',
          'A bloodborne virus',
          'An autoimmune condition'
        ],
        correctAnswerIndex: 1,
        explanation:
            'Hepatitis E is a viral infection that is primarily transmitted through contaminated food and water, especially in developing countries with poor sanitation and hygiene practices. It can cause acute liver inflammation and flu-like symptoms, similar to hepatitis A. Hepatitis E is usually self-limiting and resolves on its own, but severe cases may require medical treatment.',
      ),

      // Question 12
      QuizQuestionModel(
        question: 'What are the risk factors for hepatitis?',
        options: [
          'Exposure to infected blood or body fluids, sharing needles, unprotected sexual contact',
          'Poor sanitation, contaminated food or water, close contact with infected individuals',
          'Family history of hepatitis, autoimmune conditions, unhealthy lifestyle habits',
          'All of the above'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Risk factors for hepatitis include exposure to infected blood or body fluids, sharing needles, unprotected sexual contact, poor sanitation, contaminated food or water, close contact with infected individuals, family history of hepatitis, autoimmune conditions, and unhealthy lifestyle habits. Prevention strategies such as vaccination, safe health practices, and regular medical screenings can help reduce the risk of hepatitis infection and complications.',
      ),

      // Question 13
      QuizQuestionModel(
        question: 'What are the complications of hepatitis?',
        options: [
          'Liver damage, cirrhosis, liver cancer',
          'Kidney failure, heart disease, lung infections',
          'Neurological disorders, autoimmune conditions, skin problems',
          'All of the above'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Complications of hepatitis include liver damage, cirrhosis (scarring of the liver), liver cancer, liver failure, and other liver-related conditions. Chronic hepatitis infections, especially hepatitis B and C, can lead to long-term liver damage and increase the risk of serious complications. Early detection, treatment, and lifestyle modifications are important for preventing liver-related complications and improving overall health outcomes.',
      ),

      // Question 14
      QuizQuestionModel(
        question: 'How is hepatitis prevented?',
        options: [
          'Vaccination, safe health practices, regular medical screenings',
          'Antibiotics, antiviral medications, immune modulators',
          'Dietary supplements, herbal remedies, acupuncture',
          'Surgery, radiation therapy, chemotherapy'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Hepatitis can be prevented through vaccination, safe health practices, and regular medical screenings. Vaccines are available for hepatitis A and B, while safe health practices such as hand hygiene  and safe sexual practices can help reduce the risk of hepatitis transmission. Regular medical screenings, including blood tests and liver function tests, can help detect hepatitis infections early and guide treatment decisions.',
      ),

      // Question 15
      QuizQuestionModel(
        question: 'What is the impact of hepatitis on global health?',
        options: [
          'Hepatitis is a major public health concern worldwide',
          'Hepatitis has no impact on global health',
          'Hepatitis affects only a small number of individuals',
          'Hepatitis is a curable condition'
        ],
        correctAnswerIndex: 0,
        explanation:
            'Hepatitis is a major public health concern worldwide, with millions of individuals affected by viral hepatitis infections each year. Chronic hepatitis infections, especially hepatitis B and C, can lead to serious liver-related complications, such as cirrhosis and liver cancer, and contribute to significant morbidity and mortality. Global efforts to prevent, diagnose, and treat hepatitis are essential for reducing the burden of liver disease and improving health outcomes for affected individuals.',
      ),
    ];
  } else if (category == 'Tabacco') {
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
