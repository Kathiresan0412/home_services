import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 149.49,
          height: 191.29,
          padding: const EdgeInsets.only(left: 1, right: 3.49, bottom: 1.91),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 64.69,
                height: 65.90,
                child: Stack(),
              ),
              Center(child: Image.asset('images/Group.jpg')),
              Text(
                'Home ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF6759FF),
                  fontSize: 32,
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    child: Text(
                  'Sign In',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 28,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                )),
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(181, 15, 15, 15))),
                  width: MediaQuery.of(context).size.shortestSide * 1,
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(228, 0, 0, 0)),
                  ),
                )
              ],
            )
          ],
        ),
        Row(children: [
          Container(
            width: 343,
            height: 48,
            padding: const EdgeInsets.all(12),
            decoration: ShapeDecoration(
              color: Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://via.placeholder.com/24x24"),
                                  fit: BoxFit.cover,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(200),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '+1',
                              style: TextStyle(
                                color: Color(0xFF191A2C),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.14,
                              ),
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 2,
                              height: 20,
                              decoration: ShapeDecoration(
                                color: Color(0xFF6759FF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                              ),
                            ),
                            const SizedBox(width: 1),
                            SizedBox(
                              width: 181,
                              child: Text(
                                'Phone Number',
                                style: TextStyle(
                                  color: Color(0xFFD1D3D4),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                  letterSpacing: -0.14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ])
      ],
    );
  }
}
