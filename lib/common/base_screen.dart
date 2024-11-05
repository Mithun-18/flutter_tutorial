import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';
import 'package:testflutter/common/widgets/appbar/app_bar_without_auth.dart';

class BaseScreen extends StatelessWidget {
  final Widget screen;
  const BaseScreen({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppBarWithOutAuth(),
        body: screen,
        backgroundColor: AppColors.white,
      ),
    );
  }
}
