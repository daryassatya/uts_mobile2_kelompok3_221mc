import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/components/custom_suffix_icon.dart';
import 'package:uts_mobile2_kelompok3_221mc/components/default_button.dart';
import 'package:uts_mobile2_kelompok3_221mc/constants.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/complete_profile/components/complete_profile_form.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Text(
              "Lengkapi profil Anda",
              style: headingStyle,
            ),
            Text(
              "Lengkapi profil anda \natau melanjutkan dengan akun sosial media Anda!",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            CompleteProfileForm(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Text(
              "Dengan mendaftar, kamu telah menyetujui peraturan dan pengkondisian dari kami",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
