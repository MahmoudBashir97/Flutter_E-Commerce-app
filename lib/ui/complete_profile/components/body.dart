import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/ui/complete_profile/components/complete_profile_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
                      child: SingleChildScrollView(
                                              child: Column(
        children: [
              SizedBox(height: 20),
              Text('Complete Profilet',
                  style:headingStyle,
                  ),
                  Text('Complete your details or continue \nwith social media',
                  textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  CompleteProfileForm(),
                  SizedBox(height: 20),
                  Text('By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,),
        ],
      ),
                      ),
          ),
    );
  }
}

