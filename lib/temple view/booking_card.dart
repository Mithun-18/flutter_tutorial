import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';
import 'package:testflutter/common/widgets/core/app_elevated_button.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[_renderImage(), _renderBookingInfo(context)],
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

  Widget _renderBookingInfo(BuildContext context) {
    return Container(
      width: 360.0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Morning Aarti",
                  style: Theme.of(context).textTheme.titleSmall),
              Text("Time: 5:00 AM",
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: AppColors.black))
            ],
          ),
          SizedBox(
            width: 136,
            height: 24,
            child: AppElevatedButton(
              aebText: 'View Booking',
              aebOnPressed: () {},
              aebTextStyle: Theme.of(context).textTheme.labelMedium,
            ),
          )
        ],
      ),
    );
  }
}
