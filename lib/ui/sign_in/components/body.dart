import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:e_commerce_app/ui/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_app/ui/loginSucces/login_success_screen.dart';
import 'package:e_commerce_app/ui/sign_in/components/customSuffixIcon.dart';
import 'package:e_commerce_app/ui/sign_in/components/form_error.dart';
import 'package:e_commerce_app/ui/sign_in/components/socialCard.dart';
import 'package:e_commerce_app/ui/sign_up/sign_up_screen.dart';
import 'package:e_commerce_app/ui/splash/components/default_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: SizedBox(
            width: double.infinity,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal:20),
                        child: SingleChildScrollView(
                                                  child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight = 0.04),
            Text('Welcome Back',
            style:TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold
            )
            ),
            Text('Sign in with your email and password \n or contonue with social media',
            textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight = 20),
            SignForm(),
            SizedBox(height: SizeConfig.screenHeight = 20),
          //  SizedBox(height:getProportionateScreenHeight(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                               SocialCard(
                icon: 'assets/icons/google-icon.svg', 
                press: (){},),
                 SocialCard(
                icon: 'assets/icons/facebook-2.svg', 
                press: (){},),
                 SocialCard(
                icon: 'assets/icons/twitter.svg', 
                press: (){},),
                ]
            ),
           SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: 16,
                  ),),
                   GestureDetector(
                     onTap: (){
                       Navigator.pushNamed(context, SignUpScreen.routeName);
                     },
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
                        ),
                      ),
          ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {

  String email;
  String password;

  final _formKey = GlobalKey<FormState>();
  final List<String> errors=[

  ];
  bool remember = false;
  @override
  Widget build(BuildContext context) {
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
                        );
                        }
                return Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      buildEmailFormField(),
                SizedBox(height:40),
  
                buildPasswordFormField(),
            SizedBox(height:20),
            Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value){
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text('Remember me'),
              Spacer(),
              GestureDetector(
                onTap: ()=> Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
                              child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
            ),
            FormError(errors: errors),
            SizedBox(height:30),
            DefaultButton(text: 'Continue',press:(){
              if(_formKey.currentState.validate()){
                _formKey.currentState.save();

                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            }),
        ],
      ),
    );
  }
}
