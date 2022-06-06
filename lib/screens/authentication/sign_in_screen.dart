//Package imports
import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

//Widget imports
import '../../widgets/page_shell.dart';
import '../../widgets/authentication/custom_textfield.dart';

//Screen imports
import 'sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = 'sign-in-screen';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return PageShell(
      pageBody: Container(
        height: mediaQuery.size.height,
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
            //Password input
            CustomTextField(
                label: 'Password',
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                handler: () {}),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFD8D8D8),
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              onPressed: () {},
              child: const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2C3051),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SignUpScreen.routeName);
              },
              child: const Text(
                'New To Edume?',
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SignInScreen.routeName);
              },
              child: const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // Divider(color: Colors.black, thickness: 1.0),
                Text('or'),
                // Divider(color: Colors.black),
              ],
            ),
            Column(
              children: [
                SocialLoginButton(
                  buttonType: SocialLoginButtonType.facebook,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                SocialLoginButton(
                  buttonType: SocialLoginButtonType.google,
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
      bannerComponent: Text(
        'Sign In',
        style: TextStyle(
          fontFamily: 'Mazzard',
          fontSize: 35,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
