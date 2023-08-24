import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    // final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: h / 2,
            ),
            SizedBox(
              width: 323,
              height: 123,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'You have successfully changed your ',
                      style: TextStyle(
                        color: Color(0xFF292929),
                        fontSize: 26,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 1.38,
                      ),
                    ),
                    TextSpan(
                      text: 'Password',
                      style: TextStyle(
                        color: Color(0xFF898989),
                        fontSize: 26,
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
              height: h / 4,
            ),
            SizedBox(
              width: 329,
              height: 66,
              child: Text(
                'Redirecting to Login Page',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.20000000298023224),
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.97,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
