import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/splash/splash_screen.dart';
import 'package:uts_mobile2_kelompok3_221mc/theme.dart';
import 'routes.dart';

// import '../components/splash_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
