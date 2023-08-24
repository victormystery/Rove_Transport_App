import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rove_transport_app/screen/driver/driver_home.dart';
import 'package:rove_transport_app/screen/driver/driver_setting.dart';

import '../../widget/widget.dart';
import 'driver_profile.dart';

class DriverNotify extends StatelessWidget {
  const DriverNotify({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
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
                'Notifications',
                style: TextStyle(
                  color: Color(0xFF292929),
                  fontSize: 16,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.20,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: 342,
                height: 74,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF7F7F7),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        'Your leave has been granted. 🎊',
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
                    Positioned(
                      bottom: 8,
                      right: 10,
                      child: Text(
                        DateFormat('h:mm a').format(DateTime.now()),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 342,
                height: 74,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF7F7F7),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        'There is a driver’s meet at D-Block',
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
                    Positioned(
                      bottom: 8,
                      right: 10,
                      child: Text(
                        DateFormat('h:mm a').format(DateTime.now()),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
