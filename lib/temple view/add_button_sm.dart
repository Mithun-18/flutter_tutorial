import 'package:flutter/material.dart';

class AddButtonSm extends StatelessWidget {
  const AddButtonSm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.0,
      height: 72.0,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add_circle_outline),
              Text(
                "Add Events",
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0),
              )
            ],
          )),
    );
  }
}
