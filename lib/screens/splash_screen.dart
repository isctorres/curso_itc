import 'package:curso/screens/login_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      /*decoration: const BoxDecoration(
        gradient:
      ),*/
      child: EasySplashScreen(
        gradientBackground:  const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blueAccent,
            Colors.black
          ]
        ),
        navigator: LoginScreen(),
        durationInSeconds: 5,
        logo: Image.asset('assets/logo.png')
        //logo: Image.network('https://celaya.tecnm.mx/wp-content/uploads/2021/02/cropped-FAV.png', height: 100, )
      ),
    );
  }
}