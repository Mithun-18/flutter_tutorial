import 'package:flutter/material.dart';
import 'package:testflutter/common/app_base_screen.dart';
import 'package:testflutter/common/widgets/core/app_elevated_button.dart';
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
                  _renderTempleHeader(context),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const MyTempleCard()
                ],
              ),
              const SizedBox(
                height: 32.0,
              ),
              Column(
                children: [
                  _renderBookingHeader(context),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 24.0,
                    direction: Axis.horizontal,
                    runSpacing: 24.0,
                    children: [
                      _renderActionButton("Add Events"),
                      _renderActionButton("Add Community"),
                      _renderActionButton("Add Members"),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 32.0,
              ),
              Column(
                children: [
                  _renderCommunityHeader(context),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CommunityCardSm(),
                        CommunityCardSm(),
                        CommunityCardSm(),
                        CommunityCardSm()
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderTempleHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("My Temple", style: Theme.of(context).textTheme.titleMedium),
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
        // AppTextButton(
        //     aebText: "Update",
        //     aebSufixIcon: ImageIcon(AssetImage("assets/edit.png"))),
      ],
    );
  }

  Widget _renderBookingHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("My Bookings", style: Theme.of(context).textTheme.titleMedium),
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

  Widget _renderCommunityHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Community",
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }

  Widget _renderActionButton(String text) {
    return SizedBox(
      width: 184.0,
      height: 80.0,
      child: AppElevatedButton(
        aebText: text,
        aebPrefixIcon: Icons.add_circle_outline,
        aebSizeSmall: true,
      ),
    );
  }
}
