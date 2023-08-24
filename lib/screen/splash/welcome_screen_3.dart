import 'package:flutter/material.dart';
import 'package:rove_transport_app/auth/auth.dart';
import 'package:rove_transport_app/widget/widget.dart';

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 70),
        child: Column(
          children: [
            Container(
              width: w,
              height: h / 3,
              decoration: const ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/welcome.png'),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Color(0xFFEAEAEA)),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 250,
                    offset: Offset(-8, 4),
                    spreadRadius: 2,
                  )
                ],
              ),
            ),
            SizedBox(height: h / 6.5),
            const SizedBox(
              width: 329,
              height: 80,
              child: Text(
                'No more physical Bus Pass required',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF292929),
                  fontSize: 26,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 329,
              height: 56,
              child: Text(
                'Now you don’t need to carry your physical pass as we have e-pass',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF898989),
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.97,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 23,
              height: 9,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 9,
                      height: 9,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFDFDFDF),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 14,
                    top: 0,
                    child: Container(
                      width: 9,
                      height: 9,
                      decoration: const ShapeDecoration(
                        color: Color(0xFF292929),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: SizedBox(
                width: 313,
                height: 50,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 313,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFE6E6E6),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.50, color: Color(0xFF898989)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 136,
                      top: 11,
                      child: Text(
                        'Back',
                        style: TextStyle(
                          color: Color(0xFF898989),
                          fontSize: 20,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          height: 1.40,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                nextScreenReplace(context, const Auth());
              },
              child: SizedBox(
                width: 313,
                height: 50,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 313,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF898989),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.50, color: Color(0xFF898989)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 116,
                      top: 11,
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          height: 1.40,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
