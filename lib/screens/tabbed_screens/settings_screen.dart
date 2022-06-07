// ignore_for_file: avoid_print

import 'package:edume/widgets/page_shell.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageShell(
      pageBody: SizedBox(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                print('Account Settings');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 15,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            Text(
                              'Account Settings',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFF2C3051),
                              ),
                            ),
                          ],
                        ),
                        const Icon(Icons.chevron_right, size: 40)
                      ],
                    ),
                    const Divider(
                      height: 10,
                      color: Color(0xFFD8DCFF),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 15,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            Text(
                              'App Settings',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFF2C3051),
                              ),
                            ),
                          ],
                        ),
                        const Icon(Icons.chevron_right, size: 40)
                      ],
                    ),
                    const Divider(
                      height: 10,
                      color: Color(0xFFD8DCFF),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bannerComponent: Padding(
        padding: const EdgeInsets.only(
          top: 50.0,
          left: 15,
          right: 15,
        ),
        child: Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Mazzard',
            fontSize: 35,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
