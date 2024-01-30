import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => VerificationState();
}

class VerificationState extends State<Verification> {
  double minSide = 0.1;
  List<TextEditingController> controllers =
      List.generate(4, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    minSide = MediaQuery.of(context).size.shortestSide * 0.1;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).colorScheme.background,
          padding: EdgeInsets.all(minSide),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Verification Code',
                style: TextStyle(
                  fontSize: minSide,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'We just sent you a verification code. Check your inbox to get them.',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Row(
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: EdgeInsets.only(right: minSide * 0.5),
                    child: buildStyledTextField(index),
                  ),
                ),
              ),
               SizedBox(height: minSide*1),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: minSide*5),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(221, 234, 232, 232),
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
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return buildNumericButton((index + 1) % 10);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStyledTextField(int index) {
    return SizedBox(
      width: 50, // Adjust the width as needed
      child: TextField(
        controller: controllers[index],
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: Colors.black12,
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1), // Limit to 1 digit
        ],
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20),
        onChanged: (value) {
          // Move focus to the next TextField if a digit is entered
          if (value.isNotEmpty) {
            if (index < controllers.length - 1) {
              FocusScope.of(context).nextFocus();
            }
          }
        },
      ),
    );
  }

  Widget buildNumericButton(int number) {
    return ElevatedButton(
      onPressed: () {
        for (var controller in controllers) {
          if (controller.text.isEmpty) {
            controller.text = number.toString();
            // Move focus to the next TextField
            FocusScope.of(context).unfocus();
            break;
          }
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(221, 234, 232, 232),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        number.toString(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Verification(),
  ));
}
