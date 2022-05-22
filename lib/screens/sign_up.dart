import 'package:flutter/material.dart';

import '../widgets/authentication/textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool agreementChecked = false;
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          width: mediaQuery.size.width,
          height: mediaQuery.size.height * 0.2,
          padding: const EdgeInsets.only(top: 104, left: 28, bottom: 20),
          color: Theme.of(context).copyWith().primaryColor,
          child: Text(
            'Sign up',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Container(
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
              ),
              //Email input
              CustomTextField(
                label: 'Email',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              //Phone Number input
              CustomTextField(
                label: 'Phone number',
                controller: _phoneNumberController,
                keyboardType: TextInputType.phone,
              ),
              //Password input
              CustomTextField(
                label: 'Password',
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
              ),
              //Confirm Password input
              CustomTextField(
                label: 'Confirm Password',
                controller: _confirmPasswordController,
                keyboardType: TextInputType.visiblePassword,
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
            ],
          ),
        )
      ]),
    );
  }
}
