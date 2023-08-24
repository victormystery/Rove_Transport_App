import 'package:flutter/material.dart';
import 'package:rove_transport_app/auth/driver/driver_signup.dart';
import 'package:rove_transport_app/screen/driver/driver_notification.dart';
import 'package:rove_transport_app/screen/driver/settings_features/about.dart';
import 'package:rove_transport_app/screen/driver/settings_features/contact.dart';
import 'package:rove_transport_app/screen/driver/settings_features/privacy.dart';
import 'package:rove_transport_app/screen/driver/settings_features/reset_password.dart';

import '../../widget/widget.dart';
import 'driver_home.dart';
import 'driver_profile.dart';

class DriverSettings extends StatelessWidget {
  const DriverSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: 390,
            height: 150,
            decoration: ShapeDecoration(
              color: const Color(0xFF292929),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          nextScreen(context, const DriverProfile());
                        },
                        child: Container(
                          child: const Row(
                            children: [
                              CircleAvatar(
                                maxRadius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/driver.png'),
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Hey there, Rakesh',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 1.40,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          nextScreenReplace(context, const DriverHome());
                        },
                        child: const Icon(
                          Icons.drive_eta_outlined,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          nextScreenReplace(context, const DriverNotify());
                        },
                        child: const Icon(
                          Icons.notifications,
                          size: 32,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 35),
          Container(
            width: 342,
            height: 330,
            decoration: ShapeDecoration(
              color: const Color(0xFFF7F7F7),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    nextScreen(context, const ResetPassword());
                  },
                  child: Container(
                    width: 342,
                    height: 66,
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reset Password',
                          style: TextStyle(
                            color: Color(0xFF292929),
                            fontSize: 16,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                            letterSpacing: 0.20,
                          ),
                        ),
                        Icon(Icons.key)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    nextScreen(context, const AboutUs());
                  },
                  child: Container(
                    width: 342,
                    height: 66,
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50),
                        // borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'About Us',
                          style: TextStyle(
                            color: Color(0xFF292929),
                            fontSize: 16,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                            letterSpacing: 0.20,
                          ),
                        ),
                        Icon(Icons.info_outline)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    nextScreen(context, const Contact());
                  },
                  child: Container(
                    width: 342,
                    height: 66,
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50),
                        // borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Contact Us',
                          style: TextStyle(
                            color: Color(0xFF292929),
                            fontSize: 16,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                            letterSpacing: 0.20,
                          ),
                        ),
                        Icon(Icons.phone_in_talk)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    nextScreen(context, const PriivacyPolicy());
                  },
                  child: Container(
                    width: 342,
                    height: 66,
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Color(0xFF292929),
                            fontSize: 16,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                            letterSpacing: 0.20,
                          ),
                        ),
                        Icon(Icons.privacy_tip_outlined)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    return showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Center(child: Text("Are you sure?")),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 123,
                                    height: 33,
                                    decoration: const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 0.70),
                                      ),
                                    ),
                                    child: const SizedBox(
                                      width: 51.73,
                                      height: 20,
                                      child: Center(
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(
                                            color: Color(0xFF292929),
                                            fontSize: 16,
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w600,
                                            height: 1.40,
                                            letterSpacing: 0.20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    nextScreenReplace(context, const DriverSignup());
                                  },
                                  child: Container(
                                    width: 123,
                                    height: 33,
                                    decoration: const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 0.70),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 53,
                                            height: 20,
                                            child: Text(
                                              'Logout',
                                              style: TextStyle(
                                                color: Color(0xFF292929),
                                                fontSize: 16,
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                height: 1.40,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                          Icon(Icons.exit_to_app)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    width: 342,
                    height: 64,
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Logout',
                          style: TextStyle(
                            color: Color(0xFF292929),
                            fontSize: 16,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                            letterSpacing: 0.20,
                          ),
                        ),
                        Icon(Icons.exit_to_app)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
