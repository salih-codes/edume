import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthPageShell extends StatelessWidget {
  final Widget pageBody;
  final String pageTitle;
  final double bannerHeight;

  const AuthPageShell({
    Key? key,
    required this.pageBody,
    required this.pageTitle,
    this.bannerHeight = 0.25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String yellowBlob = 'assets/images/yellow-blob.svg';

    final mediaQuery = MediaQuery.of(context);
    final Widget svg = SvgPicture.asset(
      yellowBlob,
      height: mediaQuery.size.height * 0.2,
      semanticsLabel: 'Yellow Blob',
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                svg,
                Container(
                  width: mediaQuery.size.width,
                  height: mediaQuery.size.height * bannerHeight,
                  padding:
                      const EdgeInsets.only(top: 104, left: 28, bottom: 20),
                  color: Theme.of(context).copyWith().primaryColor,
                  child: Text(
                    pageTitle,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ],
            ),
            SizedBox(height: mediaQuery.size.height * 0.8, child: pageBody),
          ],
        ),
      ),
    );
  }
}
