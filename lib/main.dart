import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:cyphertext/helper/helper_function.dart';
import 'package:cyphertext/shared/constants.dart';
import 'package:cyphertext/pages/home_page.dart';
import 'package:cyphertext/pages/auth/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    // run the initialization for web
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: Constants.apiKey,
            appId: Constants.appId,
            messagingSenderId: Constants.messagingSenderId,
            projectId: Constants.projectId));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSignedIn = false;
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    getUserLoggedInStatus();
  }

  getUserLoggedInStatus() async {
    await HelperFunctions.getUserLoggedInStatus().then((value) {
      if (value != null) {
        setState(() {
          _isSignedIn = value;
          _isLoading = false;
        });
      } else {
        setState(() {
          _isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? MaterialApp(
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor),
              ),
            ),
          )
        : MaterialApp(
            theme: ThemeData(
                primaryColor: Constants().primaryColor,
                scaffoldBackgroundColor: Colors.white),
            debugShowCheckedModeBanner: false,
            home: _isSignedIn ? const HomePage() : const LoginPage(),
          );
  }
}
