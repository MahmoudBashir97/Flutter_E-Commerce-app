import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/ui/sign_in/components/socialCard.dart';
import 'package:e_commerce_app/ui/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
                          child: Column(
        children: [
           SizedBox(height: 30),
              Text('Register Account',
              style:headingStyle,
              ),
              Text('Complete your details or continue \nwith social media',
              textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SignUpForm(),
              SizedBox(height: 20),
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
               SizedBox(height: 20),
               Text('By continuing your confirm that your agree \nwith out term and Condition'),
               SizedBox(height: 20),
        ],
        
      ),
            ),
          ),
    );
  }
}


