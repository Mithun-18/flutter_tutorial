import 'package:flutter/material.dart';
import 'package:testflutter/common/app_base_screen.dart';
import 'package:testflutter/common/widgets/core/app_elevated_button.dart';
import 'package:testflutter/temple%20view/add_button_sm.dart';
import 'package:testflutter/temple%20view/booking_card.dart';
import 'package:testflutter/temple%20view/community_card_sm.dart';
import 'package:testflutter/temple%20view/my_temple_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBaseScreen(
      screen: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            children: [
              Column(
                children: [
                  _renderTempleHeader(),
                  const SizedBox(
                    height: 8.0,
                  ),
                  AppElevatedButton(
                    aebText: 'hello',
                    aebOnPressed: () {},
                  ),
                  const MyTempleCard()
                ],
              ),
              const SizedBox(
                height: 32.0,
              ),
              Column(
                children: [
                  _renderBookingHeader(),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const BookingCard(),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const BookingCard()
                ],
              ),
              const SizedBox(
                height: 32.0,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AddButtonSm(),
                      AddButtonSm(),
                    ],
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  AddButtonSm(),
                ],
              ),
              const SizedBox(
                height: 32.0,
              ),
              Column(
                children: [
                  _renderCommunityHeader(),
                  const Row(
                    children: [CommunityCardSm(), CommunityCardSm()],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderTempleHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "My Temple",
          style: TextStyle(
              fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 16.0),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              const Text(
                "Update ",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0),
              ),
              SizedBox(
                  width: 18.0,
                  height: 20.0,
                  child: Image.asset("assets/edit.png"))
            ],
          ),
        )
      ],
    );
  }

  Widget _renderBookingHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("My Bookings",
            style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
                fontSize: 16.0)),
        TextButton(
          onPressed: () {},
          child: const Text(
            "See All >>",
            style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w400,
                fontSize: 16.0),
          ),
        )
      ],
    );
  }

  Widget _renderCommunityHeader() {
    return const Text("Community");
  }
}
