import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/components/product_card.dart';
import 'package:uts_mobile2_kelompok3_221mc/models/product.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/components/section_title.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Produk terhangat", press: () {}),
        SizedBox(height: getProportionateScreenWidth(8)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(product: demoProducts[index]),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
