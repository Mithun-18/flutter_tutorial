import 'package:flutter/material.dart';
import 'package:testflutter/phone_number_formatter.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 60.0),
          _renderTitle(),
          _renderDescription(),
          const SizedBox(height: 32.0),
          _renderMobileNumberTextField(),
          const SizedBox(height: 40.0),
          _renderActionButton(),
        ],
      ),
    );
  }

  Widget _renderTitle() {
    return const Text(
      "Registration",
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 36.0,
        fontFamily: "Average Sans",
      ),
    );
  }

  Widget _renderDescription() {
    return const Text(
      "Enter your phone number to verify\nyour account",
      style: TextStyle(
        fontFamily: "Alatsi",
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(101, 100, 112, 1),
      ),
    );
  }

  Widget _renderMobileNumberTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        hintText: "(+91) 99-101-25628",
        hintStyle: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          fontFamily: "Alatsi",
          color: Color.fromRGBO(17, 23, 25, 1),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20),
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      inputFormatters: [PhoneNumberFormatter()],
    );
  }

  Widget _renderActionButton() {
    return Center(
      child: SizedBox(
        height: 60.0,
        width: 248.0,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            "SEND",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: "Average Sans"),
          ),
        ),
      ),
    );
  }
}
