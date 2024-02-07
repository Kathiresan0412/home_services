import 'package:flutter/material.dart';

class Servicedetails extends StatefulWidget {
  const Servicedetails({super.key});

  @override
  State<Servicedetails> createState() => _ServicedetailsState();
}

class _ServicedetailsState extends State<Servicedetails> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: screenSize.height * 0.3,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/1108101/pexels-photo-1108101.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    fit: BoxFit.cover,
                  )),
                  child: Container(
                    margin: const EdgeInsets.only(top: 50, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 33,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFB9450),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 15,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AC Regular",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text("Service",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        )
                      ],
                    ),
                  )),
              Positioned(
                
                // bottom: 10,
                // left: 10,
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 13),
                    height: screenSize.height * 0.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 5,
                                height: 30,
                                color: const Color(0xFFCABDFF),
                                margin: const EdgeInsets.only(right: 5),
                              ),
                              const Text(
                                "Type of Property",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                    child: Icon(
                                  Icons.home,
                                  color: Colors.grey,
                                )),
                              ),
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF6759FF),
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                    child: Icon(
                                  Icons.home,
                                  color: Colors.white,
                                )),
                              ),
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                    child: Icon(Icons.home, color: Colors.grey)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 13),
                    height: screenSize.height * 0.17,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // crossAxisAlignment: cr,
                          children: [
                            const Text(
                              "Number of Units",
                              style: TextStyle(fontSize: 17),
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.plus_one)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("5"),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.plus_one)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // crossAxisAlignment: cr,
                          children: [
                            const Text(
                              "Number of Units",
                              style: TextStyle(fontSize: 17),
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.plus_one)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("5"),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.plus_one)),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 13),
                    height: screenSize.height * 0.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 5,
                              height: 30,
                              color: const Color(0xFFCABDFF),
                              margin: const EdgeInsets.only(right: 5),
                            ),
                            const Text(
                              "Description",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter text',
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color(0xFF6759FF)),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 13),
                    height: screenSize.height * 0.18,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total:  USD 150.50",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Bill Details",
                                  style: TextStyle(color: Color(0xFFFC944D)),
                                ),
                                Icon(Icons.arrow_downward,
                                    color: Color(0xFFFC944D)),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                onPressed: () {}, child: const Text("Save Draft")),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text("Book Now",style: TextStyle(color: Colors.white)),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {return Colors.deepPurple;
                                  },
                      
                                  
                                ),
                                
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
