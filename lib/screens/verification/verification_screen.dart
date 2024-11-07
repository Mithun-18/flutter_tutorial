import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testflutter/common/app_colors.dart';
import 'package:testflutter/common/app_routes.dart';
import 'package:testflutter/common/base_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void initState() {
    super.initState();
    _focusNodes[0].requestFocus(); // Set focus on first field initially
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose(); // Dispose controllers
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose(); // Dispose focus nodes
    }
    super.dispose();
  }

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
              _renderVerificationTextField(context),
              const SizedBox(height: 40.0),
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
      children:
          List.generate(4, (index) => _renderVeficationFeild(context, index)),
    );
  }

  Widget _renderResendCodeMssg(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("I don’t recevie a code!",
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

  Widget _renderVeficationFeild(BuildContext context, int index) {
    return SizedBox(
        width: 64,
        height: 64,
        child: TextFormField(
          cursorColor: AppColors.salmon,
          style: Theme.of(context).textTheme.displayMedium,
          onChanged: (value) {
            if (value.isNotEmpty) {
              // Move focus to the next field if it's within bounds

              if (index < _focusNodes.length - 1) {
                _focusNodes[index + 1].requestFocus();
              } else {
                _focusNodes[index].unfocus(); // Unfocus on the last field
                // Optionally, add code here to handle complete input
              }
            } else if (value.isEmpty && index > 0) {
              // Move focus to the previous field if it's within bounds
              _focusNodes[index - 1].requestFocus();
            }
          },
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.munsell),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.fern),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
          ),
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          controller: _controllers[index],
          focusNode: _focusNodes[index],
        ));
  }
}
