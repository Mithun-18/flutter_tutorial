import 'package:flutter/material.dart';

class AddButtonLg extends StatelessWidget {
  const AddButtonLg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 160.0,
      height: 56.0,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add_circle_outline),
              SizedBox(
                width: 12.0,
              ),
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
