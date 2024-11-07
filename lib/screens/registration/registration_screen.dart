import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';
import 'package:testflutter/common/app_routes.dart';
import 'package:testflutter/common/base_screen.dart';
import 'package:testflutter/phone_number_formatter.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      screen: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 72.0),
              _renderTitle(context),
              const SizedBox(height: 8.0),
              _renderDescription(context),
              const SizedBox(height: 32.0),
              _renderMobileNumberTextField(context),
              const SizedBox(height: 48.0),
              _renderActionButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderTitle(BuildContext context) {
    return Text("Registration",
        style: Theme.of(context).textTheme.headlineLarge);
  }

  Widget _renderDescription(BuildContext context) {
    return Text("Enter your phone number to verify\nyour account",
        style: Theme.of(context).textTheme.headlineSmall);
  }

  Widget _renderMobileNumberTextField(BuildContext context) {
    return TextFormField(
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(color: AppColors.black),
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.azure),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        hintText: "(+91) 99-101-25628",
        hintStyle: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: AppColors.black),
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      inputFormatters: [PhoneNumberFormatter()],
    );
  }

  Widget _renderActionButton(BuildContext context) {
    return Center(
        child: SizedBox(
            height: 60.0,
            width: 248.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.verificationRoute);
              },
              child: Text("SEND",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w400)),
            )));
  }
}
