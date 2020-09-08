import 'package:e_commerce_app/ui/otp_verification/components/body.dart';
import 'package:flutter/material.dart';

class OtpVerifyScreen extends StatelessWidget {
  static String routeName = '/otp_verify';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Body(),
      
    );
  }
}