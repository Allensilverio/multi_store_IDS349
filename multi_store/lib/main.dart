import 'dart:io';

import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multi_store/views/buyers/auth/register_screen.dart';
import 'package:multi_store/views/buyers/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid? await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyAQTZoQY3SQ5_vXstXhKSXVveGdv8F7ifo",
        appId: "1:676194603125:android:89658afaa56c1770d3a83c",
        messagingSenderId: "676194603125",
        projectId: "multi-store-admin-allen-01",
        storageBucket:"gs://multi-store-admin-allen-01.appspot.com",
    )
  ): await Firebase.initializeApp();





  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Brand-Bold',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow.shade500),
        useMaterial3: false,
      ),
      title: 'Material App',
      //home: MainScreen()
      home: RegisterScreen()
    );
  }
}
