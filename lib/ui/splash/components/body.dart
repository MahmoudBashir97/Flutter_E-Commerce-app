
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/home/home_screen.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:e_commerce_app/ui/splash/components/default_Button.dart';
import 'package:e_commerce_app/ui/splash/components/splash_content.dart';
import 'package:e_commerce_app/ui/loginScreen.dart';
import 'package:e_commerce_app/ui/sign_in/sign_in_Screen.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  int currentPage = 0;

  List<Map<String,String>> splashData=[

                {'image': 'assets/images/splash_1.png',
                'text': 'Welcome to Tokoto, Let\'s shop!'},
                {'image': 'assets/images/splash_2.png',
                'text': 'Welcome to Tokoto, Let\'s shop!'},
                {'image': 'assets/images/splash_3.png',
                'text': 'Welcome to Tokoto, Let\'s shop!'},
                
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: SizedBox(
            width: double.infinity,
                      child: Column(
        children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value){
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context,index) =>SplashContent(
                text: splashData[index]['text'],
                image: splashData[index]['image'],),),
              ),
               Expanded(
                flex: 2,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: [
                      Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(splashData.length, (i) =>  buildDot(index: i)),
                    ), 
                    Spacer(flex: 3,),

                    currentPage==2 ?
                    DefaultButton(
                      text: 'Continue',
                      press: (){
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                       Navigator.pushNamed(context,SignInScreen.routeName);
                      },
                    ): SizedBox(),
                    Spacer(),
                    ],
                   
                  ),
                ),
              )
        ],
        
      ),
          ),
    );
  }

  AnimatedContainer buildDot({int index}){
    return  AnimatedContainer(
                      duration: kAnimationDuration,
                      margin: EdgeInsets.only(right: 5),
                      height: 6,
                      width: currentPage == index ? 20 : 6,
                      decoration: BoxDecoration(
                        color: currentPage == index ? kPrimaryColor: Color(0xFFD8D8D8),
                        borderRadius: BorderRadius.circular(3)
                        
                      ),
                    );
  }
}
