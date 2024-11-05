import 'package:flutter/material.dart';
import 'package:testflutter/common/app_base_screen.dart';
import 'package:testflutter/common/widgets/core/app_elevated_button.dart';
import 'package:testflutter/temple%20view/booking_card.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBaseScreen(
        screen: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          children: [
            _renderBookingSection(context),
            _renderSizedBox(),
            const SizedBox(
              height: 56,
              child: AppElevatedButton(
                  aebText: "Add Events",
                  aebPrefixIcon: Icons.add_circle_outline),
            )
          ],
        ),
      ),
    ));
  }

  Widget _renderBookingHeader(BuildContext context) {
    return Text("My Bookings", style: Theme.of(context).textTheme.titleMedium);
  }

  Widget _renderBookingSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _renderBookingHeader(context),
        const SizedBox(
          height: 12.0,
        ),
        const BookingCard(),
        _renderSizedBox(),
        const BookingCard()
      ],
    );
  }

  Widget _renderSizedBox() {
    return const SizedBox(
      height: 24.0,
    );
  }
}
