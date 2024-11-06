import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class AppElevatedButton extends StatelessWidget {
  final VoidCallback? aebOnPressed;
  final IconData? aebPrefixIcon;
  final IconData? aebSufixIcon;
  final String aebText;
  final TextStyle? aebTextStyle;
  final bool? aebSizeSmall;

  const AppElevatedButton(
      {super.key,
      required this.aebText,
      this.aebOnPressed,
      this.aebPrefixIcon,
      this.aebTextStyle,
      this.aebSizeSmall,
      this.aebSufixIcon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: aebOnPressed,
        child: _renderButton(context));
  }

  Widget _renderButton(BuildContext context) {
    if (aebSizeSmall != null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            aebPrefixIcon,
            color: AppColors.white,
            size: 28.0,
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
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (aebPrefixIcon != null)
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              aebPrefixIcon,
              color: AppColors.white,
              size: 28.0,
            ),
          ),
        Text(
          aebText,
          style: aebTextStyle ??
              Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontFamily: 'Inter'),
        ),
        if (aebSufixIcon != null)
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(
              aebSufixIcon,
              color: AppColors.white,
              size: 28.0,
            ),
          ),
      ],
    );
  }
}
