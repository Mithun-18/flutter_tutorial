import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[_renderImage(), _renderBookingInfo()],
      ),
    );
  }

  Widget _renderImage() {
    return SizedBox(
        width: 360,
        height: 80,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: Image.asset(
            'assets/booking.jpg',
            fit: BoxFit.cover,
          ),
        ));
  }

  Widget _renderBookingInfo() {
    return Container(
      width: 360.0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Morning Aarti",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Time: 5:00 AM",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
              width: 136,
              height: 24,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "View Booking",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  )))
        ],
      ),
    );
  }
}