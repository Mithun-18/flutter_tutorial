import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testflutter/common/app_colors.dart';
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
              _renderTitle(),
              _renderDescription(),
              const SizedBox(height: 32.0),
              _renderVerificationTextField(context),
              const SizedBox(height: 40.0),
              _renderResendCodeMssg(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderTitle() {
    return const Text(
      "Verification Code",
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 36.0,
        fontFamily: "Average Sans",
      ),
    );
  }

  Widget _renderDescription() {
    return const Text(
      "Please type the verification code sent to\nyour phone",
      style: TextStyle(
        fontFamily: "Alatsi",
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color.fromRGBO(101, 100, 112, 1),
      ),
    );
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

  Widget _renderResendCodeMssg() {
    return const Center(
      child: Text(
        "I don’t recevie a code! Please resend",
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontFamily: "Amiri Quran Colored"),
      ),
    );
  }

  Widget _renderVeficationFeild(BuildContext context) {
    return SizedBox(
        width: 64,
        height: 64,
        child: TextFormField(
          style: const TextStyle(
              fontFamily: "Amiri Quran Colored",
              fontWeight: FontWeight.w400,
              fontSize: 24.0),
          onChanged: (value) =>
              {if (value.length == 1) FocusScope.of(context).nextFocus()},
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 20),
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
