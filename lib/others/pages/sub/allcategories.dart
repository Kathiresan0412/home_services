import 'package:flutter/material.dart';
import 'package:home_services/others/widgets/circularsericescard.dart';
import 'package:home_services/others/widgets/heading.dart';
import 'package:home_services/others/widgets/searchbox.dart';

class Allcategories extends StatelessWidget {
  const Allcategories({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text(""),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Heading(title: 'All Categories'),
              const SizedBox(height: 10),
              const SearchBox(),
              const SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: [
                  CircularSercicecard(title: 'Ac Repair', icon: Icons.cabin,action: () {
            Navigator.pushNamed(context, '/AcRepair');
          },),
           CircularSercicecard(title: 'Beauty',icon: Icons.cabin,action: (){
                  Navigator.pushNamed(context, "/Beauty");
                }),
                 CircularSercicecard(title: 'Appliance',icon: Icons.cabin,action: (){
                  Navigator.pushNamed(context, "/Appliance");
                }),
                
                 CircularSercicecard(title: 'Painting',icon: Icons.cabin,action: (){
                  Navigator.pushNamed(context, "/Painting");
                }),
                 CircularSercicecard(title: 'Cleaing',icon: Icons.cabin,action: (){
                  Navigator.pushNamed(context, "/Cleaing");
                }),
                 CircularSercicecard(title: 'Plumbing',icon: Icons.cabin,action: (){
                  Navigator.pushNamed(context, "/Plumbing");
                }),
                 CircularSercicecard(title: 'Electronics',icon: Icons.cabin,action: (){
                  Navigator.pushNamed(context, "/Electronics");
                }),
                 CircularSercicecard(title: 'Shifting',icon: Icons.cabin,action: (){
                  Navigator.pushNamed(context, "/shifting");
                }),
                 CircularSercicecard(title: "Men'sSalaon",icon: Icons.cabin,action: (){
                  Navigator.pushNamed(context, "/MenSalaon");
                }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
