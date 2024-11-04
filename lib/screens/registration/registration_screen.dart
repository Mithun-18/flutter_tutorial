import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';
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
          color: AppColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60.0),
              _renderTitle(context),
              const SizedBox(height: 8.0),
              _renderDescription(context),
              const SizedBox(height: 32.0),
              _renderMobileNumberTextField(),
              const SizedBox(height: 40.0),
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

  Widget _renderMobileNumberTextField() {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: AppColors.azure), // Outline color on focus
        ),
        hintText: "(+91) 99-101-25628",
        hintStyle: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          fontFamily: "Alatsi",
          color: Color.fromRGBO(17, 23, 25, 1),
        ),
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
            // Navigator.pushNamed(context, '/verification');
          },
          child: Text(
            "SEND",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
