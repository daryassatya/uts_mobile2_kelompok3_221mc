import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
