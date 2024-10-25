import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 480,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Vefification Code",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 36,
                  fontFamily: "Average Sans",
                ),
              ),
              Text(
                "Please type the verification code sent to\nyour phone",
                style: TextStyle(
                    fontFamily: "Alatsi",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(101, 100, 112, 1)),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                  width: 64,
                  height: 64,
                  child: TextFormField(
                    onChanged: (value) => {
                      if (value.length == 1) FocusScope.of(context).nextFocus()
                    },
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
                  )),
              SizedBox(
                  width: 64,
                  height: 64,
                  child: TextFormField(
                    onChanged: (value) => {
                      if (value.length == 1) FocusScope.of(context).nextFocus()
                    },
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
                  )),
              SizedBox(
                  width: 64,
                  height: 64,
                  child: TextFormField(
                    onChanged: (value) => {
                      if (value.length == 1) FocusScope.of(context).nextFocus()
                    },
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
                  )),
              SizedBox(
                  width: 64,
                  height: 64,
                  child: TextFormField(
                    onChanged: (value) => {
                      if (value.length == 1) FocusScope.of(context).nextFocus()
                    },
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
                  )),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I don’t recevie a code! Please resend",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: "Amiri Quran Colored"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
