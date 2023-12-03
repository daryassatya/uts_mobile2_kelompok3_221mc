import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/constants.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/sign_in/sign_in_screen.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String?>> splashData = [
    {"text": "Selamat Datang", "imagePath": "assets/images/splash_1.png"},
    {
      "text": "Silahkan Berbelanja Sepuasnya!",
      "imagePath": "assets/images/splash_2.png"
    },
    {
      "text": "Kemudahan dimanapun kapanpun!",
      "imagePath": "assets/images/splash_3.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) {
                  String? imagePath = splashData[index]["imagePath"];
                  String? text = splashData[index]["text"];

                  return SplashContent(
                    imagePath: imagePath ??
                        "", // Use a default value if imagePath is null
                    text: text ?? "", // Use a default value if text is null
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index)),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Selanjutnya",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
