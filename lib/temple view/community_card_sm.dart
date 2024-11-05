import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class CommunityCardSm extends StatelessWidget {
  const CommunityCardSm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.mistyRose,
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
                _renderCommunityName(context),
                _renderTempleName(context),
                _renderFooter(context)
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
    return Container(
        width: 88.0,
        height: 88.0,
        padding: const EdgeInsets.all(4),
        child: CircleAvatar(backgroundColor: AppColors.lightSalmon));
  }

  Widget _renderCommunityName(BuildContext context) {
    return Text("Event Volunteer",
        style:
            Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12.0));
  }

  Widget _renderTempleName(BuildContext context) {
    return Text("Ram Mandir Ayodhya",
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: Colors.black));
  }

  Widget _renderFooter(BuildContext context) {
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
                Text(
                  "6.2K",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            )),
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                const Icon(
                  Icons.favorite,
                  size: 12.0,
                ),
                Text(
                  "156K",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ))
      ],
    );
  }
}
