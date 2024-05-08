class BookingRequest {
  final String customerId;
  final String fromDateTime;
  final String toDateTime;
  final int amount;
  final String location;
  final int serviceProviderId;

  BookingRequest({
    required this.customerId,
    required this.fromDateTime,
    required this.toDateTime,
    required this.amount,
    required this.location,
    required this.serviceProviderId,
  });

  // Convert this object to a JSON map to send in the request body
  Map<String, dynamic> toJson() {
    return {
      "customer_id": customerId,
      "from_date_time": fromDateTime,
      "to_date_time": toDateTime,
      "amount": amount,
      "location": location,
      "service_provider_id": serviceProviderId,
    };
  }
}