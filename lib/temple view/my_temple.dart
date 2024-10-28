import 'package:flutter/material.dart';

class MyTemple extends StatelessWidget {
  const MyTemple({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[_renderTempleImage(), _renderTempleInfo()],
        ),
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

  Widget _renderTempleInfo() {
    return Container(
      width: 360.0,
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            textAlign: TextAlign.start,
            "Ram Mandir",
            style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 14.0,
                fontWeight: FontWeight.w700),
          ),
          Divider(),
          Text(
            textAlign: TextAlign.start,
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
