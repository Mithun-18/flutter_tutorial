import 'package:flutter/material.dart';
import 'package:testflutter/temple%20view/add_button_sm.dart';
import 'package:testflutter/temple%20view/booking_card.dart';
import 'package:testflutter/temple%20view/community_card_sm.dart';
import 'package:testflutter/temple%20view/my_temple_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      child: Column(
        children: [
          Column(
            children: [
              _renderTempleHeader(),
              const SizedBox(
                height: 16.0,
              ),
              const MyTempleCard()
            ],
          ),
          const SizedBox(
            height: 24.0,
          ),
          Column(
            children: [
              _renderBookingHeader(),
              const SizedBox(
                height: 16.0,
              ),
              const BookingCard(),
              const SizedBox(
                height: 16.0,
              ),
              const BookingCard()
            ],
          ),
          const Column(
            children: [
              Row(
                children: [
                  AddButtonSm(),
                  AddButtonSm(),
                ],
              ),
              AddButtonSm(),
            ],
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
        Row(
          children: [
            const Text(
              "Update",
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
        )
      ],
    );
  }

  Widget _renderBookingHeader() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("My Bookings",
            style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
                fontSize: 16.0)),
        Text(
          "See All >>",
          style: TextStyle(
              fontFamily: "Inter", fontWeight: FontWeight.w400, fontSize: 16.0),
        )
      ],
    );
  }

  Widget _renderCommunityHeader() {
    return const Text("Community");
  }
}
