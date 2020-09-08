

import 'package:e_commerce_app/size_config.dart';
import 'package:e_commerce_app/ui/splash/components/body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    // you have to call it on your starting screen 
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Body(),
    );
  }
}