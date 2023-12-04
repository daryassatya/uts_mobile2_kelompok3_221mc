import 'package:flutter/widgets.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/home_screen.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/sign_up/sign_up_screen.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/splash/splash_screen.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/sign_in/sign_in_screen.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/complete_profile/complete_profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
