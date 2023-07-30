import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDgv_yh--y8ZAEzAmtEy_FiSzJNwtd274M",
            authDomain: "genai-de439.firebaseapp.com",
            projectId: "genai-de439",
            storageBucket: "genai-de439.appspot.com",
            messagingSenderId: "142210993094",
            appId: "1:142210993094:web:4cb25b98c3d86d76bd40c7",
            measurementId: "G-XM2J7467QP"));
  } else {
    await Firebase.initializeApp();
  }
}
