import 'package:e_commerce_app/home/home_screen.dart';
import 'package:e_commerce_app/ui/complete_profile/complete_profile_screen.dart';
import 'package:e_commerce_app/ui/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_app/ui/loginSucces/login_success_screen.dart';
import 'package:e_commerce_app/ui/otp_verification/otp_verify_screen.dart';
import 'package:e_commerce_app/ui/sign_in/sign_in_Screen.dart';
import 'package:e_commerce_app/ui/sign_up/sign_up_screen.dart';
import 'package:e_commerce_app/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';


//we use name route here
// all our routes will be available here

final Map<String,WidgetBuilder> routes = {
  SplashScreen.routeName : (context) => SplashScreen(),
  SignInScreen.routeName : (context) => SignInScreen(),
  ForgotPasswordScreen.routeName : (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName : (context) => LoginSuccessScreen(),
  SignUpScreen.routeName : (context) => SignUpScreen(),
  CompleteProfileScreen.routeName : (context) => CompleteProfileScreen(),
  OtpVerifyScreen.routeName : (context) => OtpVerifyScreen(),
  HomeScreen.routeName : (context) => HomeScreen(),

};
