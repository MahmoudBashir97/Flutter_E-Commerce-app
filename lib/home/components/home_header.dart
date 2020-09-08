
import 'package:e_commerce_app/home/components/icon_btn_counter.dart';
import 'package:e_commerce_app/home/components/search_field.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(svgSrc: 'assets/icons/Cart Icon.svg',numOfitems: 0,press: (){},),
          IconBtnWithCounter(svgSrc: 'assets/icons/Bell.svg',press: (){},numOfitems: 3,)
        ],
      ),
    );
  }
}
