import 'package:flutter/material.dart';
import 'package:rove_transport_app/auth/driver/driver_signup.dart';
import 'package:rove_transport_app/widget/widget.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 155,
              height: 242.22,
              child: Image.asset('assets/images/human.png'),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 329,
              height: 57,
              child: Text(
                'How do you want to continue as?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF292929),
                  fontSize: 26,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 1.21,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 329,
              height: 56,
              child: Text(
                'You can login as a driver or a traveller, select one to continue ',
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
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                nextScreen(context, const DriverSignup());
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
                        '  Driver',
                        textAlign: TextAlign.center,
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
            const SizedBox(height: 15),
            SizedBox(
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
                          side:
                              const BorderSide(width: 0.50, color: Color(0xFF898989)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 116,
                    top: 11,
                    child: Text(
                      'Traveller',
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
            )
          ],
        ),
      ),
    );
  }
}
