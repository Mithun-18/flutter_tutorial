import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback? aebOnPressed;
  final dynamic aebSufixIcon;
  final String aebText;
  final TextStyle? aebTextStyle;

  const AppTextButton({
    super.key,
    required this.aebText,
    this.aebOnPressed,
    this.aebSufixIcon,
    this.aebTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: aebOnPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              aebText,
              style: aebTextStyle ??
                  Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontFamily: 'Inter', color: Colors.red),
            ),
            if (aebSufixIcon != null)
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: IconButton(
                  icon: aebSufixIcon,
                  onPressed: () {},
                ),
              )
          ],
        ));
  }
}
