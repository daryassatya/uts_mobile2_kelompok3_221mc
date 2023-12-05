import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/components/categories.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/components/discount_banner.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/components/home_header.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/components/popular_products.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/components/special_offers.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenWidth(25)),
          const HomeHeader(),
          SizedBox(height: getProportionateScreenWidth(25)),
          const DiscountBanner(),
          SizedBox(height: getProportionateScreenWidth(25)),
          const Categories(),
          SizedBox(height: getProportionateScreenWidth(20)),
          const SpecialOffers(),
          SizedBox(height: getProportionateScreenWidth(25)),
          const PopularProducts(),
        ],
      ),
    ));
  }
}
