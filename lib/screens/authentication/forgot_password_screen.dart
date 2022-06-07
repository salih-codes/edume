//Package imports
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

//Widget imports
import '../../widgets/authentication/custom_textfield.dart';
import '../../widgets/page_shell.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const routeName = 'forgot-password-screen';
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool showOptions = false;
  Widget _buildOtpOptions() {
    return Column(
      children: [
        const Text(
          'Select whcih contact details should we use to reset your password',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(
          height: 18,
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.2,
          child: Card(
            elevation: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.phone_android,
                  size: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Via SMS',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '+90 123 *** ****',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.2,
          child: Card(
            elevation: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.email_outlined,
                  size: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Via Email',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'sali****@gmail.com',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showOtpOptions() {
    setState(() {
      showOptions = true;
      print('$showOptions options shown');
    });
  }

  final _usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return PageShell(
      pageBody: Padding(
        padding: const EdgeInsets.only(
          left: 28.0,
          right: 28,
          top: 60,
        ),
        child: !showOptions
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Enter your username to reset your password',
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 20),
                    child: CustomTextField(
                      label: 'Username',
                      controller: _usernameController,
                      keyboardType: TextInputType.text,
                      handler: _showOtpOptions,
                    ),
                  ),
                ],
              )
            : _buildOtpOptions(),
      ),
      bannerComponent: Text(
        'Forgot Password',
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
