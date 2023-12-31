import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/components/custom_bottom_nav_bar.dart';
import 'package:uts_mobile2_kelompok3_221mc/enums.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile_screen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masuk"),
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
