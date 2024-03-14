import 'package:flutter/material.dart';
import 'package:home_services/others/widgets/heading.dart';

class Servicedetailpage extends StatefulWidget {
  const Servicedetailpage({super.key});

  @override
  State<Servicedetailpage> createState() => _ServicedetailpageState();
}

class _ServicedetailpageState extends State<Servicedetailpage> {
  bool ishome = true;
  bool isOffice = false;
  bool isvila = false;
  int units = 0;
  int bedrooms = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(""),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.grey[300],
          child: Stack(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10, top: 50),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/acrepair.png'))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star_rate,
                              color: Colors.white,
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
                      const Text(
                        "Home cleaning",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                left: MediaQuery.of(context).size.width * 0.05,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Heading(
                        title: "Type of Property",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      selectioncolumn(),
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        // height: 200,
                        // color: Colors.amber,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Number of Units",
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  child: Row(children: [
                                    Countbutton(
                                        icon: Icons.add,
                                        onTap: () {
                                          setState(() {
                                            units = units + 1;
                                          });
                                        }),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(units.toString()),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Countbutton(
                                      icon: Icons.remove,
                                      onTap: () {
                                        setState(() {
                                          if (units > 0) {
                                            units = units - 1;
                                          }
                                        });
                                      },
                                    )
                                  ]),
                                )
                              ],
                            ),
                            const Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Number of Bedrooms",
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  child: Row(children: [
                                    Countbutton(
                                        icon: Icons.add,
                                        onTap: () {
                                          setState(() {
                                            bedrooms = bedrooms + 1;
                                          });
                                        }),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(bedrooms.toString()),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Countbutton(
                                      icon: Icons.remove,
                                      onTap: () {
                                        setState(() {
                                          if (bedrooms > 0) {
                                            bedrooms = bedrooms - 1;
                                          }
                                        });
                                      },
                                    )
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Heading(
                        title: "Description",
                      ),
                      Container(
                        height: 140,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        child: const SingleChildScrollView(
                            child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lore",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )),
                      ),
                      
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            const Divider(color: Colors.grey,),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total:USD 150",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(
                                  "Bill Details",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const ElevatedButton(
                                    onPressed: null,
                                    child: Text(
                                      "Save Darft",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )),
                                ElevatedButton(
                                  onPressed: null,
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      const Color(
                                          0xff6759ff), // Use Color constructor to create a Color object
                                    ),
                                  ),
                                  child: const Text(
                                    "Book Now",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                      
                    ],
                  ),
                  
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }

  Row selectioncolumn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              ishome = !ishome;
              isOffice = false;
              isvila = false;
            });
          },
          child: Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: ishome ? const Color(0xff6759ff) : Colors.white),
              child: Column(
                children: [
                  Icon(
                    Icons.real_estate_agent,
                    color: ishome ? Colors.white : Colors.grey,
                  ),
                  Text(
                    'Home',
                    style:
                        TextStyle(color: ishome ? Colors.white : Colors.grey),
                  )
                ],
              )),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              ishome = false;
              isOffice = !isOffice;
              isvila = false;
            });
          },
          child: Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: isOffice ? const Color(0xff6759ff) : Colors.white),
              child: Column(
                children: [
                  Icon(
                    Icons.apartment,
                    color: isOffice ? Colors.white : Colors.grey,
                  ),
                  Text(
                    'Office',
                    style:
                        TextStyle(color: isOffice ? Colors.white : Colors.grey),
                  )
                ],
              )),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              ishome = false;
              isOffice = false;
              isvila = !isvila;
            });
          },
          child: Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: isvila ? const Color(0xff6759ff) : Colors.white),
              child: Column(
                children: [
                  Icon(
                    Icons.villa,
                    color: isvila ? Colors.white : Colors.grey,
                  ),
                  Text(
                    'Vila',
                    style:
                        TextStyle(color: isvila ? Colors.white : Colors.grey),
                  )
                ],
              )),
        ),
      ],
    );
  }
}

class Countbutton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  const Countbutton({
    required this.icon,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        child: Icon(
          icon,
          color: Colors.grey,
        ),
      ),
    );
  }
}
