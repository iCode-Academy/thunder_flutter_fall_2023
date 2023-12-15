import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lesson_day_39_flutter/screen/home_screen.dart';

class OTPScreen extends StatefulWidget {
  final String verificationId;
  OTPScreen({required this.verificationId});

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _otpController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _verifyOTP() async {
    String otp = _otpController.text.trim();

    // Create a PhoneAuthCredential with the code
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: widget.verificationId,
      smsCode: otp,
    );

    // Sign in with the credential
    try {
      UserCredential userCredential = await _auth.signInWithCredential(credential);
      if (userCredential.user != null) {
        // Navigate to the home screen or dashboard
        print('verified');
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeScreen()));

      }
    } catch (e) {
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enter OTP')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _otpController,
              decoration: InputDecoration(labelText: 'OTP'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _verifyOTP,
              child: Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}