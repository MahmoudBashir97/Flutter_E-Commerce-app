
import 'package:e_commerce_app/ui/loginSucces/components/body.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {

  static String routeName = '/login_success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Center(child: Text('Login Success')),
      ),
      body: Body(),
      
    );
  }
}