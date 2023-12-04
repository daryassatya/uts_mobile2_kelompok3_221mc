import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/sign_up';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar")),
      body: Body(),
    );
  }
}
