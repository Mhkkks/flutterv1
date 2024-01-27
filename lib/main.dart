import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:event_manager/signup.dart';
import 'myhomepage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAYQNfawHHZ245oneQVSUG00pkg1nsl7_o",
          appId: "1:413363635389:web:a1117a66187b618bc0a3d4",
          messagingSenderId: "413363635389",
          projectId: "flutter-firebase-4214d"),
    );
    await Firebase.initializeApp();
    runApp(MaterialApp(
      title: "Event Hub",
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ));
  }
}
