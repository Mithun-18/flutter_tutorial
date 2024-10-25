import 'package:flutter/services.dart';

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text;

    // Remove any existing formatting characters
    String digits = text.replaceAll(RegExp(r'[^0-9]'), '');

    // Format to pattern: (+XX) XX-XXX-XXXXX
    final buffer = StringBuffer();
    if (digits.isNotEmpty) buffer.write('+');
    if (digits.length > 2) buffer.write('(');
    for (int i = 0; i < digits.length && i < 12; i++) {
      if (i == 2) buffer.write(') ');
      if (i == 4) buffer.write('-');
      if (i == 7) buffer.write('-');
      buffer.write(digits[i]);
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}
