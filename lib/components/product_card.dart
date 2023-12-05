import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uts_mobile2_kelompok3_221mc/constants.dart';
import 'package:uts_mobile2_kelompok3_221mc/models/product.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class ProductCard extends StatelessWidget {
  final double width, aspectRetion;
  final Product product;

  const ProductCard({
    super.key,
    this.width = 90,
    this.aspectRetion = 1.02,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: aspectRetion,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(product.images[0]),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              product.title,
              style: const TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${product.price.toStringAsFixed(3)}",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.w600,
                      color: Colors.orange),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                    width: getProportionateScreenWidth(28),
                    height: getProportionateScreenWidth(28),
                    decoration: BoxDecoration(
                        color: product.isFavourite
                            ? Color.fromARGB(255, 255, 175, 96).withOpacity(0.1)
                            : kPrimaryColor.withOpacity(0.1),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite
                            ? Color(0xFFFF4848)
                            : Color(0xFFD8DEE4)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
