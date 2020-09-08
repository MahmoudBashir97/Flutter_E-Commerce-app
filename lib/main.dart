import 'package:e_commerce_app/routes.dart';
import 'package:e_commerce_app/theme.dart';
import 'package:e_commerce_app/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'E-Commerce app',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      //home: LoginPage(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    )
  );
}
