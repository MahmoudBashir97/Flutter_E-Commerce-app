



import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/ui/otp_verification/otp_verify_screen.dart';
import 'package:e_commerce_app/ui/sign_in/components/customSuffixIcon.dart';
import 'package:e_commerce_app/ui/sign_in/components/form_error.dart';
import 'package:e_commerce_app/ui/splash/components/default_Button.dart';
import 'package:flutter/material.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {

  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String fname,lname,phNumber,address;

  void addError({String error}){
    if(!errors.contains(error)){
      setState((){
        errors.add(error);
      });
      }
  }

  void removeError({String error}){
    if(!errors.contains(error)){
      setState((){
        errors.remove(error);
      });
      }
  }


  @override
  Widget build(BuildContext context) {






    TextFormField buildFirstNameFormField (){
      return TextFormField(
                        keyboardType: TextInputType.text,
                        onSaved: (newValue) => fname = newValue ,
                          onChanged: (value){
                            if(value.isNotEmpty ){
                              removeError(error: kNamelNullError);
                          }
                          return null;
                        },
                         validator: (value){
                          if(value.isEmpty){
                           addError(error: kNamelNullError);
                            return '';
                          }
                                        return null;
            
                        },
                        decoration: InputDecoration(
                          labelText:'First Name',
                          hintText:'Enter your first name',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon:CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg',),
                        ),
                        );}
                        
    TextFormField buildLastNameFormField (){
      return TextFormField(
                        keyboardType: TextInputType.text,
                        onSaved: (newValue) => lname = newValue ,
                          
                        decoration: InputDecoration(
                          labelText:'Last Name',
                          hintText:'Enter your last name',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon:CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg',),
                        ),
                        );}
                        
    TextFormField buildPhoneNumberFormField (){
      return TextFormField(
                        keyboardType: TextInputType.phone,
                        onSaved: (newValue) => phNumber = newValue ,
                          onChanged: (value){
                            if(value.isNotEmpty ){
                              removeError(error: kPhoneNumberNullError);
                          }
                          return null;
                        },
                         validator: (value){
                          if(value.isEmpty){
                           addError(error: kPhoneNumberNullError);
                            return '';
                          }
                                        return null;
            
                        },
                        decoration: InputDecoration(
                          labelText:'Phone Number',
                          hintText:'Enter your phone number',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon:CustomSuffixIcon(svgIcon: 'assets/icons/Phone.svg',),
                        ),
                        );}
                        
    TextFormField buildAddressFormField (){
      return TextFormField(
                        keyboardType: TextInputType.text,
                        onSaved: (newValue) => address = newValue ,
                          onChanged: (value){
                            if(value.isNotEmpty ){
                              removeError(error: kAddressNullError);
                          }
                          return null;
                        },
                         validator: (value){
                          if(value.isEmpty){
                           addError(error: kAddressNullError);
                            return '';
                          }
                                        return null;
            
                        },
                        decoration: InputDecoration(
                          labelText:'Address',
                          hintText:'Enter your Address',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon:CustomSuffixIcon(svgIcon: 'assets/icons/Location point.svg',),
                        ),
                        );}





                        
    return Form(
      key: _formKey,
          child: Column(
        children: [
          SizedBox(height: 20),
          buildFirstNameFormField(),
                    SizedBox(height: 20),

          buildLastNameFormField(),
                    SizedBox(height: 20),

          buildPhoneNumberFormField(),
                    SizedBox(height: 20),

          buildAddressFormField(),
          FormError(errors: errors),
                    SizedBox(height: 20),

          DefaultButton(
            text: 'Continue',
            press: (){
              Navigator.pushNamed(context, OtpVerifyScreen.routeName);
            },
          )          

        ],
        
      ),
    );
  }
}