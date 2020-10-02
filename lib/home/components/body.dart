import 'package:e_commerce_app/home/components/categories.dart';
import 'package:e_commerce_app/home/components/discount_banner.dart';
import 'package:e_commerce_app/home/components/home_header.dart';
import 'package:e_commerce_app/home/components/popular_products.dart';

import 'package:e_commerce_app/home/components/special_offers.dart';

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            HomeHeader(),
            SizedBox(
              height: 30,
            ),
            DiscountBanner(),
            SizedBox(
              height: 30,
            ),
            Categories(),
            SizedBox(
              height: 30,
            ),
            SpecialOffers(),
            SizedBox(
              height: 30,
            ),
            PopularProducts(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
