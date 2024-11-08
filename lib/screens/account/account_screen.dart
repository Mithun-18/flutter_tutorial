import 'package:flutter/material.dart';
import 'package:testflutter/common/app_base_screen.dart';
import 'package:testflutter/temple%20view/account_actions.dart';
import 'package:testflutter/temple%20view/account_profile.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBaseScreen(
        screen: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          children: [
            SizedBox(height: 56.0),
            AccountProfile(),
            SizedBox(height: 32.0),
            AccountActions(),
          ],
        ),
      ),
    ));
  }
}
