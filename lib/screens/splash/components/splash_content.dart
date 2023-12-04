import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/constants.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class SplashContent extends StatelessWidget {
  final String text;
  final String imagePath;

  const SplashContent({
    Key? key,
    required this.text,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "KEDAI STTB",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text), // Displaying the text passed through the constructor
        Spacer(flex: 2),
        Image.asset(
          imagePath, // Using the image path passed through the constructor
          height: getProportionateScreenHeight(280),
          width: getProportionateScreenHeight(235),
        ),
      ],
    );
  }
}
