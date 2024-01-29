import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:flutter/material.dart';
import 'package:home_services/signin/signup.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    double minSide = MediaQuery.of(context).size.shortestSide * 0.1;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: SizedBox(
                          height: minSide * 3,
                          width: minSide * 3,
                          child: Image.asset('images/logo2.jpg')),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 0),
                      child: Text(
                        'Door Hub',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 260),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 33,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 210, top: 10),
                      child: Text(
                        'Phone number',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
                Row(children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(Icons.add_home_work),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text('+1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: DropdownButton<String>(
                      items: <String>['A', 'B', 'C', 'D'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10), // Set your desired padding
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Phone number',
                              fillColor: Colors.black38),
                        )),
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: minSide * 3,
                    ),
                    SizedBox(
                      width: minSide * 9.5,
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement your sign-in logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(221, 234, 232, 232),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('sign with'),
                  ],
                ),
                SizedBox(
                  height: minSide * 0.2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        FlutterSocialButton(
                          onTap: () {},
                          mini: true,
                          buttonType: ButtonType.google,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: FlutterSocialButton(
                            onTap: () {},
                            mini: true,
                            buttonType: ButtonType.facebook,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: FlutterSocialButton(
                            onTap: () {},
                            mini: true,
                            buttonType: ButtonType.apple,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: minSide * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          side:
                              const BorderSide(color: Colors.black, width: 1.0),
                        ),
                        child: const Text(
                          'Continue as a Guest',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: minSide * 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Create a New Account?',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 5)),
                    GestureDetector(
                      onTap: () {
                        // Navigate to SignUp page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUp()),
                        );
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ]),
        ));
  }
}
