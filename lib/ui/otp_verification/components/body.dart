import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/ui/otp_verification/components/otp_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  Row buildTimer() { 
    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                         Text(' this code will expired in '),
                         TweenAnimationBuilder(
                           tween: Tween(begin: 30.0, end: 0),
                           duration: Duration(seconds: 30), 
                           builder: (context, value , child)=> Text('00:${value.toInt}',
                           style: TextStyle(color: Colors.red[200]),
                           ),
                           onEnd: (){},)
                           
                      ],
                      );
                      }


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
                  Text('OTP Verification',
                        style:headingStyle,
                        ),
                        buildTimer(),
                        SizedBox(height: 20),
                        OtpForm(),
                        SizedBox(height: 20,),
                        Spacer(),
                        GestureDetector(
                          onTap: (){

                          },
                                                child: Text('Resend OTP Code',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                          ),
                        ),
        ],
        
      ),
                      ),
          ),
    );
  }
}

