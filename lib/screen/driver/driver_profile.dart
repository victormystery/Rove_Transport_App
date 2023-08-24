import 'package:flutter/material.dart';

class DriverProfile extends StatelessWidget {
  const DriverProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 390,
              height: MediaQuery.of(context).size.height / 3,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 839.08,
                    top: 201.06,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(2.88),
                      child: const SizedBox(
                        width: 611.75,
                        height: 557.04,
                      ),
                    ),
                  ),
                  Positioned(
                    left: -403,
                    top: 694.91,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-0.18),
                      child: const SizedBox(
                        width: 611.75,
                        height: 557.04,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 23,
                    child: Container(
                      width: 390,
                      height: 197,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/driver_back.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            top: 50,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: 28,
                                height: 28,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF292929),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.50, color: Colors.white),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 20,
                            bottom: 20,
                            child: GestureDetector(
                              onTap: () {
                                print("edit profile");
                              },
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: ShapeDecoration(
                                  color: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.50, color: Colors.white),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.edit,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 173,
                    child: Container(
                      width: 95,
                      height: 95,
                      decoration: const ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/driver.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: OvalBorder(
                          side: BorderSide(width: 0.50, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 342,
              height: 442,
              decoration: ShapeDecoration(
                color: const Color(0xFFF7F7F7),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.50),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 342,
                    height: 63,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              color: Color(0xFF292929),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Text(
                            'Rakesh Kumar',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF898989),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 342,
                    height: 63,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Driver’s ID',
                            style: TextStyle(
                              color: Color(0xFF292929),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Text(
                            '61200154',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF898989),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 342,
                    height: 63,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Allotted Bus',
                            style: TextStyle(
                              color: Color(0xFF292929),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Text(
                            'B2',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF898989),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 342,
                    height: 63,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Phone Number',
                            style: TextStyle(
                              color: Color(0xFF292929),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Text(
                            '87777 64543',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF898989),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 342,
                    height: 63,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Alt Phone Number',
                            style: TextStyle(
                              color: Color(0xFF292929),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Text(
                            '90000 00000',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF898989),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 342,
                    height: 63,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Address',
                            style: TextStyle(
                              color: Color(0xFF292929),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Text(
                            'Naini, Prayagraj',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF898989),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 342,
                    height: 63,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'E-Mail',
                            style: TextStyle(
                              color: Color(0xFF292929),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Text(
                            'xyz@gmail.com',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF898989),
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
