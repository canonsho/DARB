import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAsals14QfRCY4R1-wfqf6-BTAriIzTwdU",
            authDomain: "darb-59144.firebaseapp.com",
            projectId: "darb-59144",
            storageBucket: "darb-59144.appspot.com",
            messagingSenderId: "956115356266",
            appId: "1:956115356266:web:b8f82a57690d8c6e431813"));
  } else {
    await Firebase.initializeApp();
  }
}
