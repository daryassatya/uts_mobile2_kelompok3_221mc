import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/components/custom_bottom_nav_bar.dart';
import 'package:uts_mobile2_kelompok3_221mc/enums.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/about/components/body.dart';

class AboutScreen extends StatelessWidget {
  static String routeName = '/about_screen';
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tentang Kami"),
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
