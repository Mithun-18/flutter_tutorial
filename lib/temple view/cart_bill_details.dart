import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class CartBillDetailsCard extends StatelessWidget {
  const CartBillDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      color: AppColors.mistyRose,
      child: Container(
        height: 104.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Subtotal:", style: Theme.of(context).textTheme.labelSmall),
              Text("INR 1500", style: Theme.of(context).textTheme.labelSmall)
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Discount:", style: Theme.of(context).textTheme.labelSmall),
              Text("INR 500", style: Theme.of(context).textTheme.labelSmall)
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("GST", style: Theme.of(context).textTheme.labelSmall),
              Text("INR 0.00", style: Theme.of(context).textTheme.labelSmall)
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Total\nAmount",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontWeight: FontWeight.w500)),
              Text("INR 1500",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontWeight: FontWeight.w500))
            ])
          ],
        ),
      ),
    );
  }
}
