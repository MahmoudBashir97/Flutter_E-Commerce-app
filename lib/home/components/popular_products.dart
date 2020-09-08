import 'package:e_commerce_app/home/components/product_card.dart';
import 'package:e_commerce_app/home/components/section_title.dart';
import 'package:e_commerce_app/models/products.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SectionTitle(text: 'Popular Product', press: () {}),
      SizedBox(
        height: 10,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          ...List.generate(
            demoProducts.length,
            (index) => ProductCart(product: demoProducts[index]),
          ),
          SizedBox(
            width: 20,
          ),
        ]),
      ),
    ]);
  }
}
