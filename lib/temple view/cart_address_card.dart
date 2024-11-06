import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class CartAddressCard extends StatelessWidget {
  const CartAddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      color: AppColors.seaShell,
      child: Container(
        height: 104.0,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 16.0,
                    ),
                    Text(
                      "Pin code : 122001",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(
                      Icons.edit_outlined,
                      size: 16.0,
                    ),
                    Text("Change Address",
                        style: Theme.of(context).textTheme.labelSmall),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text("Address",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.black, fontWeight: FontWeight.w600)),
            Text("Ajitesh Chauhan",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.black, fontWeight: FontWeight.w300)),
            Text("HNo- 03, Sector 29, Gurgaon\nHR-122001",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.black, fontWeight: FontWeight.w300)),
          ],
        ),
      ),
    );
  }
}
