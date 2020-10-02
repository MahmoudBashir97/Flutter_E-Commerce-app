import 'package:e_commerce_app/models/products.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:e_commerce_app/ui/details/component/color_dots.dart';
import 'package:e_commerce_app/ui/details/component/productDescription.dart';
import 'package:e_commerce_app/ui/details/component/productImages.dart';
import 'package:e_commerce_app/ui/details/component/topRoundedContainer.dart';
import 'package:e_commerce_app/ui/splash/components/default_Button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ProductImages(product: product),
        TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            top: 15,
                            bottom: 40,
                          ),
                          child: DefaultButton(
                            text: 'Add to Cart',
                            press: () {},
                          ),
                        ),
                      )
                    ])),
              ],
            ))
      ]),
    );
  }
}
