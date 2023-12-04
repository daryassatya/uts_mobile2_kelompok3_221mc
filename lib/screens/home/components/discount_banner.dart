import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(20)),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 138, 65),
          borderRadius: BorderRadius.circular(20)),
      child: Text.rich(
        TextSpan(
          text: "DISKON AKHIR TAHUN!\n",
          style: TextStyle(
            color: Colors.white,
          ),
          children: [
            TextSpan(
                text: "Cashback hingga 30%",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
