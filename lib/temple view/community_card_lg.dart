import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class CommunityCardLg extends StatelessWidget {
  const CommunityCardLg({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.mistyRose,
      child: Stack(
        children: [
          Container(
            height: 104.0,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _renderProfile(),
                const SizedBox(
                  width: 24.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 8),
                    _renderCommunityName(),
                    _renderTempleName(),
                    const SizedBox(height: 8),
                    _renderFooter(),
                  ],
                )
              ],
            ),
          ),
          Positioned(bottom: 18, right: 16, child: _renderEditButton())
        ],
      ),
    );
  }

  Widget _renderProfile() {
    return SizedBox(
        width: 88.0,
        height: 88.0,
        child: CircleAvatar(backgroundColor: AppColors.lightSalmon));
  }

  Widget _renderCommunityName() {
    return const Text(
      "Event Volunteer",
      style: TextStyle(
          fontFamily: "Inter", fontWeight: FontWeight.w700, fontSize: 12.0),
    );
  }

  Widget _renderTempleName() {
    return const Text(
      "Ram Mandir Ayodhya",
      style: TextStyle(
          fontFamily: "Inter", fontWeight: FontWeight.w400, fontSize: 12.0),
    );
  }

  Widget _renderFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Image.asset('assets/community.png'),
                const SizedBox(
                  width: 4.0,
                ),
                const Text(
                  "6.2K",
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w300,
                      fontSize: 10.0),
                ),
              ],
            )),
        TextButton(
            onPressed: () {},
            child: const Row(
              children: [
                Icon(
                  Icons.favorite,
                  size: 12.0,
                ),
                Text(
                  "156K",
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w300,
                      fontSize: 10.0),
                ),
              ],
            ))
      ],
    );
  }

  Widget _renderEditButton() {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      SizedBox(
          width: 18.0, height: 20.0, child: Image.asset("assets/edit.png")),
      const Text(
        "Edit",
        style: TextStyle(
            fontFamily: "Inter", fontWeight: FontWeight.w300, fontSize: 10.0),
      )
    ]);
  }
}
