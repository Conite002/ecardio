import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecardio/firebase_options.dart';
import 'package:ecardio/localization/applocalization.dart';
import 'package:ecardio/views/admin/admin_login.dart';
import 'package:ecardio/views/bottomnav.dart';
import 'package:ecardio/views/auth/signup.dart';
import 'package:ecardio/widgets/appconfig.dart';
import 'package:ecardio/widgets/circularprogress.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appThemeData.copyWith(
        colorScheme: colorScheme.copyWith(
          primary: const Color(0xFF6200EE),
          secondary: const Color(0xFF3700B3),
          background: const Color(0xFFE0E0E0),
          surface: const Color(0xFFE0E0E0),
          onBackground: const Color(0xFF333333),
          onError: const Color(0xFF333333),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: const Color(0xFF333333),
          brightness: Brightness.light,
          error: const Color(0xFFE0E0E0),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<User?>(
        future: _checkLoginStatus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return ProgressIndicatorExample();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.data != null) {
            final String id = snapshot.data!.uid;
            return FutureBuilder<DocumentSnapshot>(
              future:
                  FirebaseFirestore.instance.collection('users').doc(id).get(),
              builder: (context, adminSnapshot) {
                if (adminSnapshot.connectionState == ConnectionState.waiting) {
                  return ProgressIndicatorExample();
                } else if (adminSnapshot.hasError) {
                  return Text('Error: ${adminSnapshot.error}');
                } else {
                  if (adminSnapshot.hasData) {
                    final data =
                        adminSnapshot.data!.data() as Map<String, dynamic>?;

                    bool isAdmin = false;
                    if (data != null && data.containsKey('isAdmin')) {
                      final isAdminField = data['isAdmin'];
                      if (isAdminField != null) {
                        isAdmin = isAdminField as bool;
                      }
                    }

                    if (isAdmin) {
                      return AdminLogin(); // Admin is logged in
                    } else {
                      return BottomNav(); // User is logged in
                    }
                  } else {
                    return ProgressIndicatorExample();
                  }
                }
              },
            );
          } else {
            return SignUp();
          }
        },
      ),
      debugShowMaterialGrid: false,
      // localizationsDelegates: [
      //   AppLocalizationsDelegate(),
      //   DefaultMaterialLocalizations
      //       .delegate, // Added MaterialLocalizations delegate
      //   DefaultWidgetsLocalizations.delegate,
      // ],
      // supportedLocales: const [
      //   Locale('fr', ''),
      // ],
    );
  }

  Future<User?> _checkLoginStatus() async {
    print('Checking login status ===> ${FirebaseAuth.instance.currentUser}');
    return FirebaseAuth.instance.currentUser;
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Vous avez appuyer sur le bouton plusieurs fois:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}
