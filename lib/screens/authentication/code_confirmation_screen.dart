//Package imports
// ignore_for_file: avoid_print, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

//Widget imports
import '../../widgets/page_shell.dart';

class CodeConfirmationScreen extends StatefulWidget {
  static const routeName = 'code-confirmation-screen';
  const CodeConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<CodeConfirmationScreen> createState() => _CodeConfirmationScreenState();
}

class _CodeConfirmationScreenState extends State<CodeConfirmationScreen> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return PageShell(
      pageBody: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 28.0,
              right: 28,
              top: 60,
            ),
            child: Text(
              'The verification code was sent to the phone number +90 123 456 7890, Please enter the code:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          OTPTextField(
            controller: otpController,
            length: 6,
            width: MediaQuery.of(context).size.width * 0.7,
            fieldWidth: 24,
            style: const TextStyle(fontSize: 17),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.underline,
            onChanged: (pin) {
              print("Changed: " + pin);
            },
            onCompleted: (pin) {
              print("Completed: $pin");
            },
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {
              print('OTP resent');
            },
            child: const Text(
              'Resend Verification code',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      bannerHeight: 0.3,
      bannerComponent: Text(
        'Enter 6-digit verification Code',
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
