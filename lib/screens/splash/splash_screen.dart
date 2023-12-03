import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/splash/components/body.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/Splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
