import 'package:flutter/material.dart';
import 'package:home_services/others/widgets/circularsericescard.dart';
import 'package:home_services/others/widgets/heading.dart';
import 'package:home_services/others/widgets/searchbox.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            width: double.infinity,
            height: 200,
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "HELLO ASHFAK",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.waving_hand, color: Colors.amber)
                  ],
                ),
                const Text(
                  "What you are looking for today",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                SearchBox()
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                listviewcard(context, 0xffEAF6EF),
                listviewcard(context, 0xffE9F6FC),
                listviewcard(context, 0xffEAF6EF),
                listviewcard(context, 0xffE9F6FC),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.17,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularSercicecard(title: 'Ac Repair',icon: Icons.cabin,action: (){
                  Navigator.pushNamed(context, "/AcRepair");
                }),
                 CircularSercicecard(title: 'Beauty',icon: Icons.cabin,action: (){
                  Navigator.pushNamed(context, "/Beauty");
                }),
                 CircularSercicecard(title: 'Appliance',icon: Icons.cabin,action: (){
                  Navigator.pushNamed(context, "/Appliance");
                }),
                //     CircularSercicecard(title: 'Beauty',icon: Icons.access_alarm,),
                //  CircularSercicecard(title: 'Appliance',icon: Icons.access_alarm,),
              
                GestureDetector(
                onTap: () {
    Navigator.of(context).pushNamed("/allcategories");
  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        radius: 30,
                        child: const Icon(Icons.arrow_forward, size: 30),
                      ),
                      const Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.only(top: 15),
             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              
              children: [
                Heading(title: "Cleaning Services"),
                Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white),
                child:
                 ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const CleaningServiceList(
                      imageUrl:
                          "https://img.freepik.com/free-photo/professional-cleaning-service-people-working-together-office_23-2150520596.jpg?t=st=1709177831~exp=1709181431~hmac=0470f9d232b93756ea1c88112dacf839627b4b4e2314ef3c2f8585397b24caee&w=826",
                      title: "Home Cleaning",
                    ),
                    const CleaningServiceList(
                      imageUrl:
                          "https://img.freepik.com/free-photo/full-shot-men-cleaning-office_23-2149345551.jpg?t=st=1709182395~exp=1709185995~hmac=a6537319658d8d2c33ff50484b6f4ed527111ecddc9426644e3be28e5b020869&w=826",
                      title: "Carpet Cleaning",
                    ),
                    const CleaningServiceList(
                      imageUrl:
                          "https://img.freepik.com/free-photo/disinfecting-home_155003-9129.jpg?t=st=1709182471~exp=1709186071~hmac=c758ab2655a167ccbddc39666f96f7cfd01cdbd53c51dc8586e42e387d8de4fd&w=826",
                      title: "Home Cleaning",
                    ),
                    const CleaningServiceList(
                      imageUrl:
                          "https://img.freepik.com/free-photo/full-shot-men-cleaning-office_23-2149345551.jpg?t=st=1709182395~exp=1709185995~hmac=a6537319658d8d2c33ff50484b6f4ed527111ecddc9426644e3be28e5b020869&w=826",
                      title: "Carpet Cleaning",
                    )
                  ],
                ),
              ),]
            ),
          ),
        ],
      ),
    );
  }

  Container listviewcard(BuildContext context, int colorCode) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(colorCode)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                "Deals For You",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.local_offer,
                color: Colors.amber,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Get Flat 50% off on first booking above 100",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Grab Offer"),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}




class CleaningServiceList extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CleaningServiceList({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
