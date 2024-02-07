import 'package:flutter/material.dart';

class Subcategory extends StatefulWidget {
  const Subcategory({Key? key}) : super(key: key);

  @override
  State<Subcategory> createState() => _SubcategoryState();
}

class _SubcategoryState extends State<Subcategory> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenSize.height * 0.1,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xFFFBFBFB),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Row(
              children: [
                // Back button
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                  color: Colors.black,
                  onPressed: () {
                    // Add your functionality here
                  },
                ),

                // Search field
                Expanded(
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: 'Search Category',
                      hintStyle: TextStyle(color: Colors.grey[400],fontSize: 22,fontWeight: FontWeight.w400)
                    ),
                  ),
                ),

                // Trailing icon (right side)
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF6759FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    color: Colors.white,
                    onPressed: () {
                      // Add your functionality here
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          
          color: Colors.grey[200],
          // Your main content goes here
          child: Container(
            margin: EdgeInsets.only(top: 20,right: 10,left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 5,
                            height: 30,
                            color: Color(0xFFCABDFF),
                            margin: EdgeInsets.only(right: 5),
                          ),
                          Text(
                            "Appliance Repair",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.toc)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.dashboard)),
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemCount: 3,
                      separatorBuilder: (context, index) => Divider(),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images.pexels.com/photos/8327747/pexels-photo-8327747.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                width: screenSize.width * 0.3,
                                height: screenSize.width * 0.3,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.amber,),
                                      Text(
                                        "4.8",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "(87)",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "AC Check-Up",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "Starts From",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFFB5E4CA),
                                    ),
                                    child: Text(
                                      "\$128",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.info),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
