import 'package:flutter/material.dart';

class DriverRoute extends StatefulWidget {
  const DriverRoute({super.key});

  @override
  State<DriverRoute> createState() => _DriverRouteState();
}

class _DriverRouteState extends State<DriverRoute> {
  bool _showMap = true;

  void _toggleMap() {
    setState(() {
      _showMap = !_showMap;
    });
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
            child: const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 30,
                        backgroundImage: AssetImage('assets/images/driver.png'),
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
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          _showMap ? _mapView() : _buildTextView(),
        ],
      ),
    );
  }

  Widget _mapView() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Today’s Ride Map',
                style: TextStyle(
                  color: Color(0xFF292929),
                  fontSize: 16,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                  height: 1.40,
                  letterSpacing: 0.20,
                ),
              ),
              IconButton(
                onPressed: _toggleMap,
                icon: Icon(_showMap ? Icons.map : Icons.text_fields_outlined),
              )
            ],
          ),
          const SizedBox(height: 15),
          Container(
            width: 342,
            height: 375,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    "https://s3-alpha-sig.figma.com/img/29b2/a2e8/2c8128133c0a6fdf7c296b272935cfab?Expires=1691971200&Signature=WPXo-LB8IiX5gLe8uZ0a6ZsVa9sgFXcIPlB~my~wo3TrBnojrwhgW-3Ri66LAhB4g9QO0XjxPj66PCQvPwN2Sw7HGItzykDfjog-C2Spt5B-isnY7mDT9Ex2bLJGYkSzi-xMDe54d776Shj1qLEg6EBprlpBkImOYntkPUE3KGAK~pT2HoXhrWaBXQT136XXK~ay0uRk2~NbpG9Ts4IPDDo4pd~ChWaMCwamDGilt-urM90zfFxwhHJjjq3-fel7rqjh1EV0Nv-6M8rBuD9ESJnoD4-ac3LcslO9biMQCz7jGLmLo29Wq7YO5kHGvQUrC2QKPtOSqUhOSeoqlYLDNA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget _buildTextView() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Today’s Ride ',
                style: TextStyle(
                  color: Color(0xFF292929),
                  fontSize: 16,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                  height: 1.40,
                  letterSpacing: 0.20,
                ),
              ),
              IconButton(
                onPressed: _toggleMap,
                icon: Icon(_showMap ? Icons.map : Icons.text_fields_outlined),
              )
            ],
          ),
          const SizedBox(height: 15),
          Container(
            width: 342,
            height: 526,
            decoration: ShapeDecoration(
              color: const Color(0xFFF7F7F7),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 13,
                              height: 13,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF292929),
                                shape: OvalBorder(),
                              ),
                            ),
                            const Text(
                              '  UCER',
                              style: TextStyle(
                                color: Color(0xFF292929),
                                fontSize: 16,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                                height: 1.40,
                                letterSpacing: 0.20,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '04:10 p.m.',
                          style: TextStyle(
                            color: Color(0xFF606060),
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
                  SizedBox(
                    width: 301,
                    height: 64,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 47,
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
                          top: 0,
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
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF292929),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 24,
                          top: 42,
                          child: Text(
                            'ADA Mod',
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
                          left: 228,
                          top: 42,
                          child: Text(
                            '+ 10 mins',
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
                  SizedBox(
                    width: 301,
                    height: 64,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 47,
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
                          top: 0,
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
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF292929),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 24,
                          top: 42,
                          child: Text(
                            'New Bridge',
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
                          left: 228,
                          top: 42,
                          child: Text(
                            '+ 10 mins',
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
                  SizedBox(
                    width: 301,
                    height: 64,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 47,
                          child: Container(
                            width: 13,
                            height: 13,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF898989),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 6,
                          top: 0,
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
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF292929),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 24,
                          top: 42,
                          child: Text(
                            'New Baihrana',
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
                          left: 228,
                          top: 42,
                          child: Text(
                            '+ 10 mins',
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
                  SizedBox(
                    width: 301,
                    height: 64,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 47,
                          child: Container(
                            width: 13,
                            height: 13,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF898989),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 6,
                          top: 0,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 40,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF898989),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 0.50,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF292929),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 24,
                          top: 42,
                          child: Text(
                            'Balsan',
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
                          left: 228,
                          top: 42,
                          child: Text(
                            '+ 10 mins',
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
                  SizedBox(
                    width: 301,
                    height: 64,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 47,
                          child: Container(
                            width: 13,
                            height: 13,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF898989),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 6,
                          top: 0,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 40,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF898989),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 0.50,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF292929),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 24,
                          top: 42,
                          child: Text(
                            'MNIT',
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
                          left: 228,
                          top: 42,
                          child: Text(
                            '+ 10 mins',
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
                  SizedBox(
                    width: 301,
                    height: 64,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 47,
                          child: Container(
                            width: 13,
                            height: 13,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF898989),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 6,
                          top: 0,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 40,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF898989),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 0.50,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF292929),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 24,
                          top: 42,
                          child: Text(
                            'Teliarganj',
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
                          left: 228,
                          top: 42,
                          child: Text(
                            '+ 10 mins',
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
                  SizedBox(
                    width: 301,
                    height: 64,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 47,
                          child: Container(
                            width: 13,
                            height: 13,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF898989),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 6,
                          top: 0,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 40,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF898989),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 0.50,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF292929),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 24,
                          top: 42,
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
                          left: 228,
                          top: 42,
                          child: Text(
                            '+ 10 mins',
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
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
