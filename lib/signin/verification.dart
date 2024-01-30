import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => VerificationState();
}

class VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    double minSide = MediaQuery.of(context).size.shortestSide * 0.1;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: minSide * 5, left: minSide * 1),
                  child: Text(
                    'Verification Code',
                    style: TextStyle(
                      fontSize: minSide,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: minSide, top: minSide * 0.5, bottom: minSide * 0.5),
                  child: const Text(
                    'We just send you a verify code. Check your\n inbox to get them.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: minSide * 0.5, left: minSide * 0.5),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: minSide * 0.5)),
                    buildStyledTextField(),
                    Padding(padding: EdgeInsets.only(left: minSide * 0.5)),
                    buildStyledTextField(),
                    Padding(padding: EdgeInsets.only(left: minSide * 0.5)),
                    buildStyledTextField(),
                    Padding(padding: EdgeInsets.only(left: minSide * 0.5)),
                    buildStyledTextField(),
                    Padding(padding: EdgeInsets.only(left: minSide * 0.5)),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                            left: minSide * 0.5, top: minSide * 2.5)),
                    SizedBox(
                      width: minSide * 8.5,
                      height: minSide,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(221, 234, 232, 232),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Re-sent the code in :',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget buildStyledTextField({
  TextInputType keyboardType = TextInputType.text,
  List<TextInputFormatter>? inputFormatters,
}) {
  return Expanded(
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.black45,
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    ),
  );
}
