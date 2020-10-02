import 'package:e_commerce_app/models/products.dart';
import 'package:e_commerce_app/ui/details/component/rounded_IconBtn.dart';
import 'package:flutter/material.dart';

import 'colorDot.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ...List.generate(
              product.colors.length,
              (i) => ColorDot(
                    color: product.colors[i],
                    isSelected: selectedColor == i,
                  )),
          Spacer(),
          RoundedIconBtn(iconData: Icons.remove, press: null),
          SizedBox(width: 20),
          RoundedIconBtn(iconData: Icons.add, press: null),
        ],
      ),
    );
  }
}
