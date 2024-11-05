import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';
import 'package:testflutter/common/widgets/appbar/app_bar_with_auth.dart';
import 'package:testflutter/common/widgets/core/app_bottom_navigation_bar.dart';

class AppBaseScreen extends StatelessWidget {
  final Widget screen;
  const AppBaseScreen({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppBarWithAuth(),
        body: screen,
        backgroundColor: AppColors.white,
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
