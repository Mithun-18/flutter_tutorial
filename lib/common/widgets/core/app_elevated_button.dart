import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class AppElevatedButton extends StatelessWidget {
  final VoidCallback? aebOnPressed;
  final IconData? aebPrefixIcon;
  final String aebText;
  final TextStyle? aebTextStyle;

  const AppElevatedButton({
    super.key,
    required this.aebText,
    this.aebOnPressed,
    this.aebPrefixIcon,
    this.aebTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onPressed: aebOnPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (aebPrefixIcon != null)
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(aebPrefixIcon),
            ),
          Text(
            aebText,
            style: aebTextStyle ??
                Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontFamily: 'Inter'),
          )
        ],
      ),
    );
  }
}
