import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class CartBookedServiceCard extends StatelessWidget {
  const CartBookedServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Card(
        color: AppColors.mistyRose,
        child: Container(
          height: 104.0,
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _renderPriestImg(),
                  _renderDetailsSection(context),
                  Expanded(child: _renderPriceSection(context))
                ],
              ),
            ],
          ),
        ),
      ),
      Positioned(
          top: 6.0,
          right: 10.0,
          child: GestureDetector(
              onTap: () {
                // Handle close action here
              },
              child: const Icon(
                Icons.close,
                size: 16.0,
              )))
    ]);
  }

  Widget _renderPriestImg() {
    return SizedBox(
        width: 104.0, height: 80.0, child: Image.asset("assets/priest.png"));
  }

  Widget _renderDetailsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Priest Visit for Hawan",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: AppColors.black, fontWeight: FontWeight.w400)),
        const SizedBox(height: 4.0),
        Text("Sh. Jitender Shashtri Ji",
            style: Theme.of(context).textTheme.labelSmall),
        const SizedBox(height: 4.0),
        Text("May 10, 2024     10:00 AM",
            style: Theme.of(context).textTheme.labelSmall),
      ],
    );
  }

  Widget _renderPriceSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 16.0),
        Text("INR 1500",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: AppColors.black)),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "INR-2000",
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: AppColors.dimGray,
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.lineThrough),
            ),
            Text(
              " 25% Off",
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: AppColors.dimGray, fontWeight: FontWeight.w300),
            ),
          ],
        )
      ],
    );
  }
}
