import 'package:flutter/material.dart';
import 'package:testflutter/common/app_base_screen.dart';
import 'package:testflutter/common/app_colors.dart';
import 'package:testflutter/common/app_routes.dart';
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
              _renderTempleSection(context),
              _renderSizeBox(),
              _renderBookingSection(context),
              _renderSizeBox(),
              _renderButtons(context),
              _renderSizeBox(),
              _renderCommunitySection(context)
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
              Text(
                "Update ",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                    color: AppColors.salmon),
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

  Widget _renderBookingHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("My Bookings", style: Theme.of(context).textTheme.titleMedium),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.eventRoute);
          },
          child: Text(
            "See All >>",
            style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                color: AppColors.salmon),
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

  Widget _renderActionButton(String text, {VoidCallback? onPressed}) {
    return SizedBox(
      height: 72.0,
      child: AppElevatedButton(
        aebText: text,
        aebPrefixIcon: Icons.add_circle_outline,
        aebSizeSmall: true,
        aebOnPressed: onPressed ?? () {},
      ),
    );
  }

  Widget _renderSizeBox() {
    return const SizedBox(
      height: 32.0,
    );
  }

  Widget _renderTempleSection(BuildContext context) {
    return Column(
      children: [
        _renderTempleHeader(context),
        const SizedBox(
          height: 8.0,
        ),
        const MyTempleCard()
      ],
    );
  }

  Widget _renderBookingSection(BuildContext context) {
    return Column(
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
    );
  }

  Widget _renderButtons(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 24.0,
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          runSpacing: 24.0,
          children: [
            _renderActionButton("Add Events"),
            _renderActionButton("Add Community", onPressed: () {
              Navigator.pushNamed(context, AppRoutes.communityRoute);
            }),
            _renderActionButton("Add Members"),
          ],
        ),
      ],
    );
  }

  Widget _renderCommunitySection(BuildContext context) {
    return Column(
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
    );
  }
}
