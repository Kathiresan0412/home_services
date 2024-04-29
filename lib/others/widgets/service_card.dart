import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_services/others/pages/sub/categories/providers_services/service_model.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    required this.service,
  }) : super(key: key);

  final Service service;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).pushNamed("/Servicedetailpage");
                  Navigator.of(context).pushNamed(
  "/Servicedetailpage",
  arguments: {'id': service.serviceId},
);
   
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.width * 0.3,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Text(
                      "${service.rating}", // Accessing service property directly
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                   
                  ],
                ),
                Row(
                  children: [
                   
                     Container(
                      width: 150,
                       child: Text(
                        "${service.serviceTypeName}",
                         overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                                           ),
                     ),
                     Container(
                        width: 50,
                       child: Text(
                         "(${service.providerName})",
                          overflow: TextOverflow.ellipsis,
                         style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                                           ),
                     ),
                  ],
                ),
                Text(
                  "per_hour",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFB5E4CA),
                  ),
                  child: Text(
                     "Rs.${service.amountPerHour}",
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
              icon: Icon(Icons.more_horiz),
            ),
          ],
        ),
      ),
    );
  }
}
