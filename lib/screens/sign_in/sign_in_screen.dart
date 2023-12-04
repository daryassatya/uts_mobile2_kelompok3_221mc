import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Masuk"),
        ),
        body: Body());
  }
}
