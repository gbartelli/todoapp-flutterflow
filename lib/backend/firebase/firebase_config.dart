import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCPsTBjkq5xE45JkZ6Gy24mFl7dv-c84Dc",
            authDomain: "microsaas-todo.firebaseapp.com",
            projectId: "microsaas-todo",
            storageBucket: "microsaas-todo.appspot.com",
            messagingSenderId: "948664883391",
            appId: "1:948664883391:web:826659bcdafa99cb2c4e0a",
            measurementId: "G-QD26WXL3NB"));
  } else {
    await Firebase.initializeApp();
  }
}
