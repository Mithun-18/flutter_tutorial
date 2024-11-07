import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class MyTempleCard extends StatelessWidget {
  const MyTempleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _renderTempleImage(),
          _renderTempleInfo(context),
        ],
      ),
    );
  }

  Widget _renderTempleImage() {
    return SizedBox(
        width: 360,
        height: 140,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: Image.asset(
            'assets/temple.jpg',
            fit: BoxFit.cover,
          ),
        ));
  }

  Widget _renderTempleInfo(BuildContext context) {
    return Container(
      width: 360.0,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Ram Mandir",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Divider(color: AppColors.munsell),
          const Text(
            "Ayodhya, UP",
            style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 12.0,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
