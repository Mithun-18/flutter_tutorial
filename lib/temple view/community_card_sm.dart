import 'package:flutter/material.dart';

class CommunityCardSm extends StatelessWidget {
  const CommunityCardSm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Container(
            width: 160.0,
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _renderProfile(),
                _renderCommunityName(),
                _renderTempleName(),
                _renderFooter()
              ],
            ),
          ),
          Positioned(
              top: 8,
              right: 8,
              child: SizedBox(
                  width: 18.0,
                  height: 20.0,
                  child: Image.asset("assets/edit.png")))
        ],
      ),
    );
  }

  Widget _renderProfile() {
    return const SizedBox(width: 88.0, height: 88.0, child: CircleAvatar());
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
}
