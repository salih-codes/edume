//Package imports
import 'package:flutter/material.dart';

//Screen imports
import 'screens/authentication/sign_up_screen.dart';
import 'screens/authentication/sign_in_screen.dart';
import 'screens/authentication/code_confirmation_screen.dart';
import 'screens/authentication/forgot_password_screen.dart';
import 'screens/authentication/recovery_code_screen.dart';
import 'screens/authentication/reset_password-screen.dart';
import 'screens/tabbed_screens/tab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edume',
      theme: ThemeData(
        primaryColor: const Color(0xFFEDB423),
        colorScheme: ColorScheme.fromSwatch(
          errorColor: const Color(0xFF820F23),
          accentColor: const Color(0xFF353535),
        ).copyWith(
          secondary: const Color(0xFF2C3051),
        ),
        fontFamily: 'Mazzard',
        textTheme: const TextTheme(
          headline6: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          headline5: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
      ),
      initialRoute: TabsScreen.routeName,
      routes: {
        TabsScreen.routeName: (ctx) => const TabsScreen(),
        SignUpScreen.routeName: (ctx) => const SignUpScreen(),
        SignInScreen.routeName: (ctx) => const SignInScreen(),
        CodeConfirmationScreen.routeName: (ctx) =>
            const CodeConfirmationScreen(),
        ForgotPasswordScreen.routeName: (ctx) => const ForgotPasswordScreen(),
        RecoveryCodeScreen.routeName: (ctx) => const RecoveryCodeScreen(),
        ResetpasswordScreen.routeName: (ctx) => const ResetpasswordScreen()
      },
    );
  }
}
