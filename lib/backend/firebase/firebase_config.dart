import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB9aBHaEazC96PHfAKkEVBTqTNhillQ3kM",
            authDomain: "apppizzaria-4afc0.firebaseapp.com",
            projectId: "apppizzaria-4afc0",
            storageBucket: "apppizzaria-4afc0.appspot.com",
            messagingSenderId: "465205902284",
            appId: "1:465205902284:web:d8dc3da13f0e0a70233b69",
            measurementId: "G-QXS37JLN3J"));
  } else {
    await Firebase.initializeApp();
  }
}
