import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/complete_profile/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar")),
      body: Body(),
    );
  }
}
