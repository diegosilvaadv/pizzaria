import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC1VtT6EbslN1hgWOcv40SENZWmsb6H8k4",
            authDomain: "pizzaria-db473.firebaseapp.com",
            projectId: "pizzaria-db473",
            storageBucket: "pizzaria-db473.appspot.com",
            messagingSenderId: "565373204452",
            appId: "1:565373204452:web:ee24358c60a20c9ebfb9f1"));
  } else {
    await Firebase.initializeApp();
  }
}
