// ignore_for_file: unused_import, await_only_futures

import 'package:ecommerce/firebase_options.dart';
import 'package:ecommerce/pages/HomePage/home_page.dart';
import 'package:ecommerce/pages/LoginPage/login_page.dart';
import 'package:ecommerce/providers/loginscreen_provider.dart';
import 'package:ecommerce/providers/signin_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  /// starting of an app.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? isHome;
  Widget? homeWidget;
  @override
  void initState() {
    checkHome();
    super.initState();
  }

  void checkHome() async {
    final Future<SharedPreferences> preferences =
        SharedPreferences.getInstance();
    final prefs = await preferences;
    isHome = await prefs.getBool('user');
    if (isHome == true) {
      homeWidget = const HomePage();
      setState(() {});
    } else {
      homeWidget = const LoginPage();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    /// using multi provider for better management.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignInProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        /// setting themes for entire apps.
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff201A30),
          // colorScheme: const ColorScheme(
          //   background: Color(0xff201A30),
          //   brightness: Color(value)
          // ),
        ),

        /// first page of app.
        /// This must be login page.
        home: homeWidget,
      ),
    );
  }
}
