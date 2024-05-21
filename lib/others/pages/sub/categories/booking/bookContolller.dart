import 'dart:convert';
import 'package:home_services/others/pages/sub/categories/booking/bookmodel.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class BookController {
  Future<void> createBooking(BuildContext context, BookingRequest bookingRequest) async {
    const String apiUrl = 'https://homeservicebackend-production.up.railway.app/api/requests';

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json', // Ensure the correct content type
        },
        body: jsonEncode(bookingRequest.toJson()), // Convert the object to JSON
      );

      if (response.statusCode == 200) {
        // Success: handle response or parse further if needed
        print('Booking created successfully');
        Navigator.of(context).pushNamedAndRemoveUntil('/homePage', (Route<dynamic> route) => false);
      } else {
        throw Exception('Failed to create booking: ${response.statusCode}');
      }
    } catch (e) {
      // Handle errors (network errors, JSON parsing errors, etc.)
      throw Exception('An error occurred while creating booking: $e');
    }
  }
}
