//Package imports
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

//Widget imports
import '/widgets/authentication/auth_page_shell.dart';

class RecoveryCodeScreen extends StatefulWidget {
  static const routeName = 'recovery-code-screen';
  const RecoveryCodeScreen({Key? key}) : super(key: key);

  @override
  State<RecoveryCodeScreen> createState() => _RecoveryCodeScreenState();
}

class _RecoveryCodeScreenState extends State<RecoveryCodeScreen> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return AuthPageShell(
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
                'The recovery code was sent to the phone number +90 123 456 7890, Please enter the code:',
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
                'Resend recovery code',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
        bannerHeight: 0.3,
        pageTitle: 'Enter 6-digit recovery Code');
  }
}
