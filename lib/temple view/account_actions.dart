import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.seaShell,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _renderAction(context, "Manage Temple"),
            _renderDivider(),
            _renderAction(context, "Manage Bookings"),
            _renderDivider(),
            _renderAction(context, "User Management"),
            _renderDivider(),
            _renderAction(context, "Logout"),
          ],
        ),
      ),
    );
  }

  Widget _renderAvatar() {
    return SizedBox(
        width: 48.0,
        height: 48.0,
        child: CircleAvatar(backgroundColor: AppColors.salmon));
  }

  Widget _renderAction(BuildContext context, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _renderAvatar(),
          const SizedBox(width: 12.0),
          Text(name,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontWeight: FontWeight.w400, color: AppColors.black)),
          const Spacer(),
          Icon(Icons.arrow_forward_ios_rounded, color: AppColors.salmon)
        ],
      ),
    );
  }

  Widget _renderDivider() {
    return Divider(
      color: AppColors.salmon,
      height: 1.0,
    );
  }
}
