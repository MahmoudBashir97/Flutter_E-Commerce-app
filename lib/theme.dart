
import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme:appBarTheme() ,
        textTheme: textTheme(),
        fontFamily: 'Muli',
        inputDecorationTheme: inputDecorationTheme(),
                );
        }
        

  InputDecorationTheme inputDecorationTheme() {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Color.fromRGBO(143, 148, 251, .9)),//color:kTextColor),
                    gapPadding: 10,
                  );
        return InputDecorationTheme(
                  //floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                  enabledBorder:outlineInputBorder,
                  focusedBorder: outlineInputBorder,
                  border: outlineInputBorder,
    );
  }
TextTheme textTheme(){
  return  TextTheme(
          
          bodyText1: TextStyle(
            color: kTextColor,
          ),
          bodyText2: TextStyle(
            color: kTextColor,
          ),
        );
}

AppBarTheme appBarTheme(){
  return AppBarTheme(
         elevation: 0,
         color:Colors.white,
         brightness: Brightness.light,
         iconTheme: IconThemeData(color: Colors.black), 
         textTheme: TextTheme(
           headline6: TextStyle(
             color:Color(0xFF888888),
             fontSize: 18,
             
           )
         )
        );
}