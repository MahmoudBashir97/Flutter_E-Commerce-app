



import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/ui/splash/components/default_Button.dart';
import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {

  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();

   pin2FocusNode = FocusNode();
   pin3FocusNode = FocusNode();
   pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {

    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();


  }


  void nextField({String value , FocusNode focusNode}){
    if (value.length == 1){
      focusNode.requestFocus();
    }  
}

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
        width: double.infinity,
              child: Column(
          children: [
             Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
                child: TextField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 24,),
                    textAlign: TextAlign.center,
                   decoration: otpInputDecoration,
                   onChanged: (value){
                     nextField(value: value , focusNode: pin2FocusNode);
                   },
                ),
              ),
              SizedBox(
                width: 20,
                child: TextField(
                  focusNode: pin2FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 24,),
                    textAlign: TextAlign.center,
                   decoration: otpInputDecoration,
                   onChanged: (value){
                     nextField(value: value , focusNode: pin3FocusNode);
                   },
                ),
              ),
              SizedBox(
                width: 20,
                child: TextField(
                  focusNode: pin3FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 24,),
                    textAlign: TextAlign.center,
                   decoration: otpInputDecoration,
                   onChanged: (value){
                     nextField(value: value , focusNode: pin4FocusNode);
                   },
                ),
              ),
              SizedBox(
                width: 20,
                child: TextField(
                  focusNode: pin4FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 24,),
                    textAlign: TextAlign.center,
                   decoration: otpInputDecoration,
                   onChanged: (value){
                     pin4FocusNode.unfocus();
                   },
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          DefaultButton(
            text: 'Continue',
            press: (){

            },
          )
          ],  
        ),
      ),
    );
  }
}