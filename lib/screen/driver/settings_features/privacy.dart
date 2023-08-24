import 'package:flutter/material.dart';

import '../../../widget/widget.dart';
import '../driver_profile.dart';

class PriivacyPolicy extends StatelessWidget {
  const PriivacyPolicy({super.key});

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
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 30),
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
                ],
              ),
            ),
          ),
          const SizedBox(height: 35),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
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
              const SizedBox(height: 20),
              Container(
                width: 342,
                height: 510,
                padding: const EdgeInsets.all(18),
                decoration: ShapeDecoration(
                  color: const Color(0xFFF7F7F7),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.70),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const SizedBox(
                  width: 284,
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur. Tristique nisl non mollis gravida vitae pharetra enim ultrices pellentesque. Sit eros est ultrices lectus est feugiat. Sagittis auctor sagittis mattis arcu ullamcorper mi. Convallis auctor condimentum suspendisse feugiat leo dui lectus suspendisse ut. Ullamcorper neque enim elementum morbi diam egestas. Ac sapien convallis facilisis dui et. Nibh massa neque et in leo non feugiat. Ut non quisque netus nibh eu accumsan. Mi est tellus ut sit sit. Leo volutpat quam lorem leo sed enim nam nisi sit. Mauris feugiat facilisi viverra etiam volutpat. Euismod neque enim sed sed eget arcu justo massa curabitur. Vehicula pulvinar felis consequat tristique. Curabitur felis aliquam',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w600,
                      height: 1.40,
                      letterSpacing: 0.20,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
