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
                    _renderCommunityName(context),
                    _renderTempleName(context),
                    const SizedBox(height: 8),
                    _renderFooter(context),
                  ],
                )
              ],
            ),
          ),
          Positioned(bottom: 18, right: 16, child: _renderEditButton(context))
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

  Widget _renderCommunityName(BuildContext context) {
    return Text(
      "Event Volunteer",
      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12.0),
    );
  }

  Widget _renderTempleName(BuildContext context) {
    return Text("Ram Mandir Ayodhya",
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: Colors.black, fontWeight: FontWeight.w400));
  }

  Widget _renderFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: () {},
            child: Row(children: [
              Image.asset('assets/community.png'),
              const SizedBox(
                width: 4.0,
              ),
              Text("6.2K",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: AppColors.charcoal))
            ])),
        TextButton(
            onPressed: () {},
            child: Row(children: [
              const Icon(
                Icons.favorite,
                size: 12.0,
              ),
              Text("156K",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: AppColors.charcoal))
            ]))
      ],
    );
  }

  Widget _renderEditButton(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      SizedBox(
          width: 18.0, height: 20.0, child: Image.asset("assets/edit.png")),
      Text("Edit", style: Theme.of(context).textTheme.labelSmall)
    ]);
  }
}
