import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  final GestureCancelCallback press;

  const SectionTitle({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18), color: Colors.black),
          ),
          GestureDetector(
            onTap: press,
            child: Text("Lihat lebih"),
          )
        ],
      ),
    );
  }
}
