import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rove_transport_app/screen/splash/welcome_screen_1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigatetohome();
    super.initState();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomeScreen1(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Color(0xff292929),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ROVE',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                letterSpacing: 8.64,
              ),
            ),
            Text(
              'Travel Made Easy',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                letterSpacing: 1.04,
              ),
            )
          ],
        ),
      ),
    );
  }
}
