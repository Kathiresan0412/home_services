import 'package:flutter/material.dart';
import 'package:home_services/others/auth/auth.dart';
import 'package:home_services/others/pages/sub/categories/booking/bookContolller.dart';
import 'package:home_services/others/pages/sub/categories/booking/bookmodel.dart';

class CreateService extends StatefulWidget {
  final Map<dynamic, dynamic>? header;
  const CreateService({Key? key, this.header}) : super(key: key);

  @override
  State<CreateService> createState() => _CreateService();
}

class _CreateService extends State<CreateService> {
  final TextEditingController locationController = TextEditingController(); 
  AuthDataSources authDataSources = AuthDataSources();
  Map<String, dynamic>? userData;

  DateTime? _fromDate;
  DateTime? _toDate;
  BookController bookContolller = BookController();
  
  Future<void> _createservice() async {
    // Simulate fetching user data
    Map<String, dynamic>? user = await authDataSources.getUserData();
    setState(() {
      userData = user;
    });

    // Ensure all necessary data is provided
    if (_fromDate == null || _toDate == null || locationController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill in all fields before confirming.')),
      );
      return;
    }

    // Create a BookingRequest object
    final bookingRequest = BookingRequest(
      customerId: userData?["id"] ?? 0, 
      fromDateTime: _fromDate!.toIso8601String(),
      toDateTime: _toDate!.toIso8601String(),
      amount: widget.header?['amount'] ?? 0,
      location: locationController.text,
      serviceProviderId: widget.header?['Provider_id'] ?? 0, 
    );

    // Pass the BookingRequest object to createBooking
    try {
      await bookContolller.createBooking(context, bookingRequest);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Booking failed: $e')),
      );
    }
  }

  @override
  void initState() {
    print(locationController.text);
    print(widget.header?['Provider_name']);
    print(widget.header?['Provider_id']);
    print(widget.header?['amount']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Color(0xff6759ff),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Services Creation',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff6759ff),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Once you've booked, you cannot cancel your booking.",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff6759ff)),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      const Row(
                                        children: [
                                          Icon(Icons.paid, color: Color(0xff6759ff)),
                                          SizedBox(width: 5),
                                          Text(
                                            "Cost per hour",
                                            style: TextStyle(color: Color(0xff6759ff)),
                                          ),
                                        ],
                                      ),
                                      TextField(
                                        
                                        controller: TextEditingController(
                                          text: widget.header?['amount'].toString() ?? '',
                                        ),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Type detail...",
                                          hintStyle: TextStyle(color: Colors.grey[500]),
                                        ),
                                      )
                                    ],
                                  ),
                                 
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        _createservice();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff6759ff),
                        ),
                        child: const Text(
                          "Confirm",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
