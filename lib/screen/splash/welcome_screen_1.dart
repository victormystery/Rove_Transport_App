import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rove_transport_app/screen/splash/welcome_screen_2.dart';
import 'package:rove_transport_app/widget/widget.dart';

class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/unsplash.png'),
                fit: BoxFit.cover)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6000000238418579),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 253,
                    height: 58,
                    child: Text(
                      'Welcome to Rove',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 313,
                    height: 68,
                    child: Text(
                      'We make your daily travel easy with Rove where you can track your daily ride, on your finger tips.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.800000011920929),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.04,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      nextScreenReplace(context, const WelcomeScreen2());
                    },
                    child: Container(
                      width: 313,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF898989),
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(width: 0.50, color: Color(0xFF898989)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.20,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
