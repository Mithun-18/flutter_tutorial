import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testflutter/common/app_colors.dart';
import 'package:testflutter/common/app_routes.dart';
import 'package:testflutter/common/base_screen.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      screen: SingleChildScrollView(
        child: Container(
          color: AppColors.white,
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60.0),
              _renderTitle(context),
              const SizedBox(height: 8.0),
              _renderDescription(context),
              const SizedBox(height: 32.0),
              _renderVerificationTextField(context),
              const SizedBox(height: 48.0),
              _renderResendCodeMssg(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderTitle(BuildContext context) {
    return Text("Verification Code",
        style: Theme.of(context).textTheme.headlineLarge);
  }

  Widget _renderDescription(BuildContext context) {
    return Text("Please type the verification code sent to\nyour phone",
        style: Theme.of(context).textTheme.headlineSmall);
  }

  Widget _renderVerificationTextField(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _renderVeficationFeild(context),
        _renderVeficationFeild(context),
        _renderVeficationFeild(context),
        _renderVeficationFeild(context)
      ],
    );
  }

  Widget _renderResendCodeMssg(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("I don’t recevie a code! ",
            style: Theme.of(context).textTheme.labelLarge),
        IconButton(
          icon: Text("Please resend",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: AppColors.salmon)),
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.homeScreenRoute);
          },
        ),
      ],
    ));
  }

  Widget _renderVeficationFeild(BuildContext context) {
    return SizedBox(
        width: 64,
        height: 64,
        child: TextFormField(
          cursorColor: AppColors.salmon,
          style: Theme.of(context).textTheme.displayMedium,
          onChanged: (value) =>
              {if (value.length == 1) FocusScope.of(context).nextFocus()},
          decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide:
                    BorderSide(color: Color.fromRGBO(52, 168, 83, 1.0))),
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.fern),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ));
  }
}
