import 'package:flutter/material.dart';
import 'package:rove_transport_app/screen/driver/driver_home.dart';
import 'package:rove_transport_app/widget/widget.dart';

class DriverSignup extends StatelessWidget {
  const DriverSignup({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 287,
              height: 100,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Rove',
                      style: TextStyle(
                        color: Color(0xFF292929),
                        fontSize: 40,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 1.38,
                      ),
                    ),
                    TextSpan(
                      text: '          ',
                      style: TextStyle(
                        color: Color(0xFF292929),
                        fontSize: 32,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 1.38,
                      ),
                    ),
                    TextSpan(
                      text: 'Welcomes You',
                      style: TextStyle(
                        color: Color(0xFF898989),
                        fontSize: 32,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 1.38,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 155,
              height: 242.22,
              child: Image.asset('assets/images/sitting.png'),
            ),
            const SizedBox(height: 20),
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
                        color: const Color(0xFFEFEFEF),
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(width: 0.50, color: Color(0xFF898989)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 31,
                    top: 13,
                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: Color(0xFF898989),
                        fontSize: 18,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
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
                        color: const Color(0xFFEFEFEF),
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(width: 0.50, color: Color(0xFF898989)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 31,
                    top: 13,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        color: Color(0xFF898989),
                        fontSize: 18,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                nextScreenReplace(context, const DriverHome());
              },
              child: Container(
                width: 313,
                height: 50,
                decoration: ShapeDecoration(
                  color: const Color(0xFF898989),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50, color: Color(0xFF898989)),
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
                      height: 1.40,
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 329,
              height: 56,
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Forgot Password? ',
                      style: TextStyle(
                        color: Color(0xFF898989),
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.97,
                      ),
                    ),
                    TextSpan(
                      text: 'Reset here',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.20000000298023224),
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.97,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 329,
              height: 56,
              child: Text(
                'Change Login Type',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.20000000298023224),
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.97,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
