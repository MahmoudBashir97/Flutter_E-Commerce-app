
import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key key,
    @required this.svgSrc,
    this.numOfitems=0,
    @required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfitems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
                        child: Stack(
        overflow: Overflow.visible,
        children: [
        
        Container(
          padding: EdgeInsets.all(12),
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(svgSrc),
        ),
        if(numOfitems !=0)
        Positioned(
          top: -3,
          right: 0,
                              child: Container(
            height: 16,
            width: 16,
             decoration: BoxDecoration(
              color: Color(0xFFFF4848),
              shape: BoxShape.circle,
              border: Border.all(width: 1.5,color: Colors.white),
            ),
            child: Center(
              child: Text(
                '${numOfitems >9? '+9' : numOfitems}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                height: 1,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,),
            ),
          ),
        )
      ]),
    );
  }
}
