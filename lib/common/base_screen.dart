import 'package:flutter/material.dart';
import 'package:testflutter/app_bar.dart';
import 'package:testflutter/common/app_colors.dart';

class BaseScreen extends StatelessWidget {
  final Widget screen;
  const BaseScreen({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MyAppBar(),
        body: screen,
        backgroundColor: AppColors.white,
      ),
    );
  }
}
