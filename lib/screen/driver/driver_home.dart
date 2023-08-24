import 'package:flutter/material.dart';
import 'package:rove_transport_app/screen/driver/driver_notification.dart';

import '../../widget/widget.dart';
import 'driver_profile.dart';
import 'driver_route.dart';
import 'driver_setting.dart';

class DriverHome extends StatefulWidget {
  const DriverHome({super.key});

  @override
  State<DriverHome> createState() => _DriverHomeState();
}

class _DriverHomeState extends State<DriverHome> {
  double slidePosition = 0.0;
  bool isSlideCompleted = false;

  void _onSlideUpdate(double newPosition) {
    setState(() {
      slidePosition = newPosition;
      if (newPosition >= 127.0) {
        isSlideCompleted = true;
      } else {
        isSlideCompleted = false;
      }
    });
  }

  void _navigateToNewScreen() {
    // Navigate to a new screen here
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DriverRoute(),
      ),
    );
  }

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
                          nextScreenReplace(context, const DriverNotify());
                        },
                        child: const Icon(
                          Icons.notifications,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          nextScreenReplace(context, const DriverSettings());
                        },
                        child: const Icon(
                          Icons.settings,
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
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Today’s Ride',
                style: TextStyle(
                  color: Color(0xFF292929),
                  fontSize: 16,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                  height: 1.40,
                  letterSpacing: 0.20,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 342,
                height: 229,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF7F7F7),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 295,
                        height: 89,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 5,
                              child: Container(
                                width: 13,
                                height: 13,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF292929),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 71,
                              child: Container(
                                width: 13,
                                height: 13,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF292929),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 6,
                              top: 24,
                              child: Transform(
                                transform: Matrix4.identity()
                                  ..translate(0.0, 0.0)
                                  ..rotateZ(1.57),
                                child: Container(
                                  width: 40,
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 0.50,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: Color(0xFF292929),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 24,
                              top: 0,
                              child: Text(
                                'UCER',
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
                            const Positioned(
                              left: 24,
                              top: 66,
                              child: Text(
                                'Shantipuram',
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
                            const Positioned(
                              left: 174,
                              top: 67,
                              child: Text(
                                'ETA - 07:50 a.m.',
                                style: TextStyle(
                                  color: Color(0xFF606060),
                                  fontSize: 16,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600,
                                  height: 1.40,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 267,
                              top: 0,
                              child: Text(
                                'R-2',
                                style: TextStyle(
                                  color: Color(0xFF606060),
                                  fontSize: 16,
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
                      const SizedBox(height: 5),
                      const Divider(),
                      const SizedBox(height: 5),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.chair),
                          Text(
                            'Available Seats',
                            style: TextStyle(
                              color: Color(0xFF898989),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '23/',
                                  style: TextStyle(
                                    color: Color(0xFF292929),
                                    fontSize: 16,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w600,
                                    height: 1.40,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                                TextSpan(
                                  text: '45',
                                  style: TextStyle(
                                    color: Color(0xFF292929),
                                    fontSize: 13,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w600,
                                    height: 1.40,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Divider(),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 124,
                            height: 35,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Center(
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
                          Center(
                            child: Container(
                              width: 162,
                              height: 35,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFD9D9D9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  AnimatedPositioned(
                                    duration: const Duration(milliseconds: 200),
                                    left: slidePosition.clamp(0.0, 127.0),
                                    child: Container(
                                      width: 33,
                                      height: 31,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFF292929),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  AnimatedPositioned(
                                    duration: const Duration(milliseconds: 200),
                                    right: isSlideCompleted ? 8.0 : null,
                                    left: isSlideCompleted ? 8.0 : null,
                                    child: Opacity(
                                      opacity: (1.0 - (slidePosition / 127.0))
                                          .clamp(0.0, 1.0),
                                      child: const Center(
                                        child: Text(
                                          '  Slide to Start',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onHorizontalDragUpdate: (details) {
                                      _onSlideUpdate(details.localPosition.dx);
                                    },
                                    onHorizontalDragEnd: (details) {
                                      if (!isSlideCompleted) {
                                        setState(() {
                                          slidePosition = 0;
                                        });
                                      } else {
                                        _navigateToNewScreen();
                                      }
                                    },
                                    child: Container(
                                      width: 162,
                                      height: 35,
                                      color: Colors.transparent,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          Container(
            width: 342,
            height: 333,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    "https://s3-alpha-sig.figma.com/img/4431/f09f/61547e6a6f2b68a031fe732e7c0a5f0c?Expires=1691971200&Signature=OGqFjAjTSlNMDfcdgSI1xtzkZdFPL1DMBvjlMYIhCnzWZsBc2CVIZgKeZD8PIkEW5uOI5z5rPFZYZY-0WKVkcRAtz4YPpgVgGzKRFG7ArUEyOO-y6dIvCHacP~oJfvBJNhl-WMJ-wajJEXnJijBFvB91K4zYlafdjinqaxg6Fn4k139x7NnffZWxJ7zbmDgCYF4YeQQbBNal4kkYOrRNp5zHsIajtGRt2cIUWUdwrBIqTrCCETtZkAIb3x~qedhJknSHsaMD5kkLGzyg09lq9fR8bYMoDTaivrTE0JjeLaSr8ZpRrvw0zAW7cTo3aLO7CtEj7AHgg~Pnr1-HvmTpcg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          )
        ],
      ),
    );
  }
}
