import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teacher_provider/constant/app_text_style.dart';
import 'package:teacher_provider/screens/home_screen.dart';

import '../theme_provider.dart';

class SecondarySplashScreen extends ConsumerWidget {
  const SecondarySplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeProvider);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background_image.png'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.blueAccent,
                  gradient: LinearGradient(
                    colors: [Color(0xFF2249D4), Color(0xFFE9EEFA)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.34,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            height: MediaQuery.of(context).size.height * 0.45 + 30,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              height: MediaQuery.of(context).size.height * 0.45 + 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: themeState.appTheme == AppTheme.light
                      ? Colors.white
                      : Colors.black),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Get The Latest News And Updates',
                    style: AppTextStyle.inter32w600Black,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'From Politics to Entertainment: Your One-Stop Source for Comprehensive Coverage of the Latest News and Developments Across the Glob will be right on your hand.',
                    style: AppTextStyle.inter18w400Grey,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen())),
                    child: Container(
                      width: 145,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFF2D5BD0)),
                      child: Row(
                        children: [
                          Text(
                            "Explore",
                            style: AppTextStyle.inter20w600White,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
