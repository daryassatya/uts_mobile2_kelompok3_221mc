import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uts_mobile2_kelompok3_221mc/constants.dart';
import 'package:uts_mobile2_kelompok3_221mc/models/product.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/components/categories.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/components/discount_banner.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/components/home_header.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/components/section_title.dart';
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
          SizedBox(height: getProportionateScreenWidth(30)),
          const DiscountBanner(),
          SizedBox(height: getProportionateScreenWidth(25)),
          const Categories(),
          SizedBox(height: getProportionateScreenWidth(25)),
          SpecialOffers(),
          SizedBox(height: getProportionateScreenWidth(25)),
          SectionTitle(text: "Produk terhangat", press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  demoProducts.length,
                  (index) => ProductCard(product: demoProducts[index]),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

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
            SizedBox(height: 5),
            Text(
              product.title,
              style: TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${product.price}",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
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
