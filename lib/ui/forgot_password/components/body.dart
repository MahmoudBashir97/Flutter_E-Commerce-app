

import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/ui/sign_in/components/customSuffixIcon.dart';
import 'package:e_commerce_app/ui/sign_in/components/form_error.dart';
import 'package:e_commerce_app/ui/splash/components/default_Button.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
          child: SingleChildScrollView(
                      child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Column(
        children: [
                           SizedBox(height:20),

              Text('Forgot Password',
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold ),),
                
              Text('Please enter your email and we will send \nyou a link to return to your account',
              textAlign: TextAlign.center,
              ),
                           SizedBox(height:20),

              ForgotPassForm(),
        ],
        
      ),
            ),
          ),
    );
  }
}


class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {

 final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 30),
          buildEmailFormField(),
          SizedBox(height: 30),
          FormError(errors: errors),
          SizedBox(height:  50.1),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                // Do what you want to do
              }
            },
          ),
          SizedBox(height:70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                     GestureDetector(
                       onTap: (){},
                                            child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 16,
                        color:  Color.fromRGBO(143, 148, 251, .9),
                        fontWeight: FontWeight.bold,
                    ),),
                     ),
                ],
              ),
              SizedBox(height: 20),
         
          ],
        ),
    );
  }

  TextFormField buildEmailFormField (){
      return TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onSaved: (newValue) => email = newValue ,
                          onChanged: (value){
                            if(value.isNotEmpty && errors.contains(kEmailNullError)){
                            setState((){
                              errors.remove(kEmailNullError);
                            });
                            
                          }else if(emailValidatorRegExp.hasMatch(value) 
                          && 
                          errors.contains(kInvalidEmailError))
                          {
                            setState(() {
                              errors.remove(kInvalidEmailError);
                            });
                            
                            }
                        },
                         validator: (value){
                          if(value.isEmpty && !errors.contains(kEmailNullError)){
                            setState((){
                              errors.add(kEmailNullError);
                            });
                            return '';
                          }else if(!emailValidatorRegExp.hasMatch(value) 
                          && 
                          !errors.contains(kInvalidEmailError))
                          {
                            setState(() {
                              errors.add(kInvalidEmailError);
                            });
                             return '';
                          }
                                        return null;
            
                        },
                        decoration: InputDecoration(
                          labelText:'Email',
                          hintText:'Enter your email',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon:CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg',),
                        ),
                        );
                        }
}