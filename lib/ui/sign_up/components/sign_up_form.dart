import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/ui/complete_profile/complete_profile_screen.dart';
import 'package:e_commerce_app/ui/sign_in/components/customSuffixIcon.dart';
import 'package:e_commerce_app/ui/sign_in/components/form_error.dart';
import 'package:e_commerce_app/ui/splash/components/default_Button.dart';
import 'package:flutter/material.dart';



class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {



  String email;
  String password;
  String confirm_password;
  final _formKey = GlobalKey<FormState>();
  final List<String> errors=[];



  @override
  Widget build(BuildContext context) {

 TextFormField buildConfirmPasswordFormField (){
      return TextFormField(
                obscureText: true, 
                onSaved: (newValue)=> confirm_password = newValue,
                onChanged: (value){
                    if(password == confirm_password){
                    setState((){
                      errors.remove(kMatchPassError
                      );
                    });
                    } 
                    return null;
                },
                 validator: (value){
                  if(value.isEmpty ){
                    
                    return '';
                  }else if(password != value)
                  {
                    setState(() {
                      errors.add(kMatchPassError);
                    });
                    return '';
    
                  }
                                return null;
    
                },
                decoration: InputDecoration(
                  labelText:'Confirm Password',
                  hintText:'Re-enter your password',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg',),
                ),
                );
    }


    TextFormField buildPasswordFormField (){
      return TextFormField(
                obscureText: true, 
                onSaved: (newValue)=> password = newValue,
                onChanged: (value){
                    if(value.isNotEmpty && errors.contains(kPassNullError)){
                    setState((){
                      errors.remove(kPassNullError);
                    });
                  }else if(value.length >= 8
                  && 
                  errors.contains(kShortPassError))
                  {
                    setState(() {
                      errors.remove(kShortPassError);
                    });
                    }
                    password = value;
                    return null;
                },
                 validator: (value){
                  if(value.isEmpty && !errors.contains(kPassNullError)){
                    setState((){
                      errors.add(kPassNullError);
                    });
                    return '';
                  }else if(value.length < 8
                  && 
                  !errors.contains(kShortPassError))
                  {
                    setState(() {
                      errors.add(kShortPassError);
                    });
                    return '';
    
                  }
                                return null;
    
                },
                decoration: InputDecoration(
                  labelText:'Password',
                  hintText:'Enter your password',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg',),
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
                        );}

    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: 30),
          buildPasswordFormField(),
           SizedBox(height: 30),
           buildConfirmPasswordFormField(),
           SizedBox(height: 30),
           FormError(errors: errors),
           DefaultButton(
             text: 'Continue',
             press: (){
                if(_formKey.currentState.validate()){
                _formKey.currentState.save();

                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
             }
             },
           )
        ],
      ),
    );
                        
  }



}