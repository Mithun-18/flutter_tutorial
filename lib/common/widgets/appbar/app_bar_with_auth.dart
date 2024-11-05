import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class AppBarWithAuth extends StatelessWidget implements PreferredSizeWidget {
  final double appbarHeight = 80.0;

  const AppBarWithAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.white,
      flexibleSpace: SizedBox(
        height: appbarHeight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              _renderLeading(context),
              _renderTitle(),
              _renderAction(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderLeading(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pop(context);
      },
      child: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: AppColors.white, // Set a background color if needed
          borderRadius:
              BorderRadius.circular(12.0), // Optional: add border radius
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(211, 209, 216, 0.3),
              offset: Offset(0, 2),
              blurRadius: 4,
              spreadRadius: 1,
            )
          ],
        ),
        child: IconButton(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 12,
                  height: 2,
                  color: AppColors.salmon,
                ),
                const SizedBox(height: 4),
                Container(
                  width: 8,
                  height: 2,
                  color: AppColors.salmon,
                ),
              ],
            ),
            onPressed: () {}),
      ),
    );
  }

  Widget _renderTitle() {
    return Expanded(
      child: Image.asset(
        "assets/logo.png",
        width: 132.0,
        height: 44.0,
      ),
    );
  }

  Widget _renderAction() {
    return const CircleAvatar(
      backgroundImage: AssetImage("assets/profile.jpg"),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appbarHeight);
}
