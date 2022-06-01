import 'package:edume/widgets/authentication/auth_page_shell.dart';
import 'package:edume/widgets/authentication/custom_textfield.dart';
import 'package:flutter/material.dart';

class ResetpasswordScreen extends StatefulWidget {
  static const routeName = 'reset-passwrod-screen';
  const ResetpasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetpasswordScreen> createState() => _ResetpasswordScreenState();
}

class _ResetpasswordScreenState extends State<ResetpasswordScreen> {
  final _newPasswordController = TextEditingController();
  final _confirmNewPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthPageShell(
        pageBody: Container(
          padding: EdgeInsets.symmetric(vertical: 100, horizontal: 25),
          child: Column(
            children: [
              CustomTextField(
                label: 'New password',
                controller: _newPasswordController,
                keyboardType: TextInputType.visiblePassword,
                handler: () {},
              ),
              CustomTextField(
                label: 'Confirm new password',
                controller: _newPasswordController,
                keyboardType: TextInputType.visiblePassword,
                handler: () {},
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFD8D8D8),
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () {},
                child: const Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C3051),
                  ),
                ),
              ),
            ],
          ),
        ),
        pageTitle: 'Reset Pasword');
  }
}
