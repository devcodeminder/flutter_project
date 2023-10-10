import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Firebaseconfig {
  static Future<FirebaseApp> initilizeApp() async {
    final FirebaseOptions firebaseOptions = FirebaseOptions(
        apiKey: "AIzaSyAxOM-VjbBOLR9VOmUU9RtLaaZjyv6QMwY",
        authDomain: "fir-6c07c.firebaseapp.com",
        projectId: "fir-6c07c",
        storageBucket: "fir-6c07c.appspot.com",
        messagingSenderId: "593368784740",
        appId: "1:593368784740:web:e12d3acacd37392a03e471",
        measurementId: "G-NGGJLTXL2B");

    final FirebaseApp app =
        await Firebase.initializeApp(options: firebaseOptions);
    await FirebaseAuth.instanceFor(app: app);
    return app;
  }

  Firebaseconfig._();
}
