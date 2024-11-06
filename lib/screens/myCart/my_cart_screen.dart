import 'package:flutter/material.dart';
import 'package:testflutter/common/app_base_screen.dart';
import 'package:testflutter/common/widgets/core/app_elevated_button.dart';
import 'package:testflutter/temple%20view/cart_address_card.dart';
import 'package:testflutter/temple%20view/cart_bill_details.dart';
import 'package:testflutter/temple%20view/cart_booked_service_card.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBaseScreen(
        screen: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          children: [
            const CartAddressCard(),
            const SizedBox(height: 24.0),
            _renderBookedServiceSection(context),
            const SizedBox(height: 24.0),
            _renderBillDetailsSection(context),
            const SizedBox(height: 48.0),
            const SizedBox(
                width: 160.0,
                child: AppElevatedButton(
                    aebText: "Pay Now",
                    aebSufixIcon: Icons.arrow_circle_right_outlined))
          ],
        ),
      ),
    ));
  }

  Widget _renderBookedServiceSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Booked Services", style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8.0),
        const CartBookedServiceCard()
      ],
    );
  }

  Widget _renderBillDetailsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Bill Details", style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8.0),
        const CartBillDetailsCard()
      ],
    );
  }
}
