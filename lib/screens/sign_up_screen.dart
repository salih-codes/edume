import 'package:edume/widgets/authentication/auth_page_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Widget imports
import '../widgets/authentication/custom_textfield.dart';

//Screen imports
import 'sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = 'sign-up-screen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool agreementChecked = false;
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const String yellowBlob = 'assets/images/yellow-blob.svg';

    final mediaQuery = MediaQuery.of(context);
    final Widget svg = SvgPicture.asset(
      yellowBlob,
      height: mediaQuery.size.height * 0.2,
      semanticsLabel: 'Yellow Blob',
    );
    return AuthPageShell(
        pageBody: Container(
          height: mediaQuery.size.height * 0.6,
          padding: EdgeInsets.symmetric(
              vertical: mediaQuery.size.height * 0.1,
              horizontal: mediaQuery.size.height * 0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Username input
              CustomTextField(
                  label: 'Username',
                  controller: _usernameController,
                  keyboardType: TextInputType.text,
                  handler: () {}),
              //Email input
              CustomTextField(
                  label: 'Email',
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  handler: () {}),
              //Phone Number input
              CustomTextField(
                  label: 'Phone number',
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.phone,
                  handler: () {}),
              //Password input
              CustomTextField(
                  label: 'Password',
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  handler: () {}),
              //Confirm Password input
              CustomTextField(
                label: 'Confirm Password',
                controller: _confirmPasswordController,
                keyboardType: TextInputType.visiblePassword,
                handler: () {},
              ),
              //Agreement Checkbox widget and link to Terms and Conditions
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: agreementChecked,
                    onChanged: (val) {
                      setState(() {
                        agreementChecked = val!;
                      });
                    },
                  ),
                  const Text(
                    'I have read and agreed to the',
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    'Terms and Conditions',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFEDB423),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFD8D8D8),
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () {},
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C3051),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {
                  Navigator.of(context).popAndPushNamed(SignInScreen.routeName);
                },
                child: const Text(
                  'Already have an account?',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
        pageTitle: 'Sign Up');
  }
}
