import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/constants.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          Container(
            width: SizeConfig.screenWidth * 0.6,
            height: 50,
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Cari produk",
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenHeight(9)),
              ),
            ),
          ),
          Container(
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(color: kPressTimeout),
          ),
        ],
      ),
    ));
  }
}
