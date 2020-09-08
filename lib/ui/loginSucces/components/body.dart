
import 'package:e_commerce_app/home/home_screen.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:e_commerce_app/ui/splash/components/default_Button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
          child: Column(
        children: [
          SizedBox(height: 40),
          Image.asset('assets/images/success.png',
          height: 190,//40%,
          ),
           SizedBox(height: 40),
           Text('Login Success',
           style: TextStyle(
             fontSize: 30,
             fontWeight: FontWeight.bold,
             color: Colors.black,
           ),
           ),
           Spacer(),
           SizedBox(
             width: SizeConfig.screenWidth * 0.6,
                      child: DefaultButton(text: 'Back to home',press: (){
                        Navigator.of(context).pushNamed(HomeScreen.routeName);
             }
             ),
            
           ),
            Spacer(),
        ],
      ),
    );
  }
}