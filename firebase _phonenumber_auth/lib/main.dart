import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'firebase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebaseconfig.initilizeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Page());
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Otp example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (Context) => OtpScreen()));
            },
            child: Text('Verify phone number'),
          ),
        ),
      ),
    );
  }
}

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _phonenumber = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  String _verificationId = '';

  Future<void> _verifyphone() async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: _phonenumber.text,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
          print(
              'phone number automatically verified and user signed in:${_auth.currentUser!.uid}');
        },
        verificationFailed: (FirebaseAuthException e) {
          print('phone number verification failed:$e');
        },
        codeSent: (String verificationId, int? resendToken) {
          print('code sent to ${_phonenumber.text}');
          _verificationId = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          _verificationId = verificationId;
        },
        timeout: const Duration(seconds: 120),
      );
    } catch (e) {
      print('Error during phone number verification:$e');
    }
  }

  Future<void> _verifyOtp() async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: _verificationId, smsCode: _otpController.text);
      await _auth.signInWithCredential(credential);
      print('User Siged in:${_auth.currentUser!.uid}');
    } catch (e) {
      print('error during OTP verification :$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('otp verification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: _phonenumber,
              decoration: InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
            ),
            ElevatedButton(onPressed: _verifyphone, child: Text('send Otp')),
            TextField(
              controller: _otpController,
              decoration: InputDecoration(labelText: 'otp'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(onPressed: _verifyOtp, child: Text('verifyed otp'))
          ],
        ),
      ),
    );
  }
}
