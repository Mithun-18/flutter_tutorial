import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class AccountProfile extends StatefulWidget {
  const AccountProfile({super.key});

  @override
  State<AccountProfile> createState() => _AccountProfileState();
}

class _AccountProfileState extends State<AccountProfile> {
  static bool showOptions = true;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _renderTempleDetails(context),
              _renderViewAction(context),
              if (showOptions) _renderViews(context)
            ],
          )
        ],
      ),
      Positioned(left: 2.0, top: 2.0, child: _renderAvatar())
    ]);
  }

  Widget _renderTempleDetails(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.seaShell,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(14.0),
          topRight: Radius.circular(14.0),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 80.0,
          ),
          Expanded(
            child: _renderTempleInfo(context),
          ),
        ],
      ),
    );
  }

  Widget _renderTempleInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Ram Mandir",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: AppColors.black)),
            _renderEditIcon(),
          ],
        ),
        Text("Ayodhya, India",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: AppColors.black, fontWeight: FontWeight.w400)),
      ],
    );
  }

  Widget _renderEditIcon() {
    return SizedBox(
      width: 18.0,
      height: 20.0,
      child: Image.asset("assets/edit.png"),
    );
  }

  Widget _renderViewAction(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 56.0),
      decoration: BoxDecoration(
        color: AppColors.coral,
        borderRadius: BorderRadius.only(
          bottomLeft: const Radius.circular(14.0),
          bottomRight: Radius.circular(showOptions ? 0.0 : 14.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                showOptions = !showOptions;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Change View",
                    style: Theme.of(context).textTheme.labelMedium),
                Icon(
                  showOptions
                      ? Icons.keyboard_arrow_down_rounded
                      : Icons.keyboard_arrow_right_rounded,
                  color: AppColors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderViews(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Container(
          decoration: BoxDecoration(
            color: AppColors.coral,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(14.0),
              bottomRight: Radius.circular(14.0),
            ),
          ),
          width: 224.0,
          child: Column(children: [
            _renderButton(context, "Devotee View"),
            const SizedBox(height: 8.0),
            _renderButton(context, "Priest View"),
            const SizedBox(height: 8.0)
          ]))
    ]);
  }

  Widget _renderButton(BuildContext context, String text) {
    return SizedBox(
      width: 212.0,
      height: 24.0,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith((state) {
          return AppColors.white;
        })),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: AppColors.black),
        ),
      ),
    );
  }

  Widget _renderAvatar() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2.0), // White border
      ),
      child: const CircleAvatar(
        radius: 32.0,
        backgroundImage: AssetImage("assets/profile.jpg"),
      ),
    );
  }
}
