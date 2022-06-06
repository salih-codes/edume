import 'package:flutter/material.dart';

class PageShell extends StatelessWidget {
  final Widget pageBody;
  final Widget bannerComponent;
  final double bannerHeight;

  const PageShell({
    Key? key,
    required this.pageBody,
    required this.bannerComponent,
    this.bannerHeight = 0.25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 30,
          color: Colors.black, //change your color here
        ),
        title: bannerComponent,
        centerTitle: false,
        // title:,
        toolbarHeight: mediaQuery.size.height * 0.2,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/yellow-banner.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: mediaQuery.size.height * 0.8,
              child: pageBody,
            ),
          ],
        ),
      ),
    );
  }
}
