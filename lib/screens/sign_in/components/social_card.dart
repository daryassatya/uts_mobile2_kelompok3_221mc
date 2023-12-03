import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class SocialCard extends StatelessWidget {
  final String? icon; // Making icon nullable
  final Function()? press; // Making press nullable

  const SocialCard({
    Key? key,
    this.icon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press, // Use press function if it's not null
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: icon != null
            ? SvgPicture.asset(icon!)
            : null, // Check for icon availability
      ),
    );
  }
}
