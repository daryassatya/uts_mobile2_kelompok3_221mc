import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uts_mobile2_kelompok3_221mc/constants.dart';
import 'package:uts_mobile2_kelompok3_221mc/enums.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/home_screen.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/profile/profile_screen.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class CustomBottomNavBar extends StatelessWidget {
  final MenuState selectedMenu;

  const CustomBottomNavBar({
    super.key,
    required this.selectedMenu,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xFFDADADA).withOpacity(0.15))
          ]),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: getProportionateScreenWidth(20)),
            IconButton(
              onPressed: () => Navigator.pushNamed(
                  context,
                  HomeScreen
                      .routeName), // Replace null with your onPressed function
              icon: SvgPicture.asset(
                // ignore: deprecated_member_use
                "assets/icons/Shop Icon.svg",
                // ignore: deprecated_member_use
                color: selectedMenu == MenuState.home
                    ? kPrimaryColor
                    : kSecondaryColor,
              ),
            ),
            IconButton(
              onPressed: null,
              // ignore: deprecated_member_use
              icon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
                // ignore: deprecated_member_use
                color: selectedMenu == MenuState.favourite
                    ? kPrimaryColor
                    : kSecondaryColor,
              ),
            ),
            IconButton(
              onPressed: null,
              // ignore: deprecated_member_use
              icon: SvgPicture.asset(
                "assets/icons/Chat bubble Icon.svg",
                // ignore: deprecated_member_use
                color: selectedMenu == MenuState.message
                    ? kPrimaryColor
                    : kSecondaryColor,
              ),
            ),
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ProfileScreen.routeName),
              // ignore: deprecated_member_use
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                // ignore: deprecated_member_use
                color: selectedMenu == MenuState.profile
                    ? kPrimaryColor
                    : kSecondaryColor,
              ),
            ),
            SizedBox(width: getProportionateScreenWidth(20)),
          ],
        ),
      ),
    );
  }
}
