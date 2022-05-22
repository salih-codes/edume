import 'package:edume/screens/sign_up.dart';
import 'package:flutter/material.dart';

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
      home: const Edume(),
    );
  }
}

class Edume extends StatelessWidget {
  const Edume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUp(),
    );
  }
}
