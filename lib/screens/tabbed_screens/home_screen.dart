//package imports
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

//widget imports
import '../../widgets/class_card.dart';
import '/widgets/page_shell.dart';

//Model imports
import '../../models/class.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return PageShell(
      pageBody: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 30.0,
              bottom: 18,
              left: 30,
            ),
            child: Text(
              'Newest Classes',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
              height: mediaQuery.size.height * 0.25,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 500.0,
                ),
                items: sampleClassData.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Card(
                        elevation: 2,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: double.infinity,
                              child: Image.network(
                                i.thumbnail,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                                color: Colors.white,
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      i.instructorName,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(i.classDescription),
                                  ],
                                ))
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              )),
          const Padding(
            padding: EdgeInsets.only(
              top: 30.0,
              bottom: 18,
              left: 30,
            ),
            child: Text(
              'Popular Classes',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (ctx, i) {
                  return ClassCard(
                    instructorName: sampleClassData[i].instructorName,
                    classDescription: sampleClassData[i].classDescription,
                    categories: sampleClassData[i].categories,
                    coverImageUrl: sampleClassData[i].thumbnail,
                    price: sampleClassData[i].price,
                    rating: sampleClassData[i].rating,
                    videoCount: sampleClassData[i].videoCount,
                  );
                },
                itemCount: sampleClassData.length,
              ),
            ),
          )
        ],
      ),
      bannerComponent: Padding(
        padding: const EdgeInsets.only(
          top: 50.0,
          left: 15,
          right: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Home',
              style: Theme.of(context).textTheme.headline5,
            ),
            Image.asset(
              'assets/images/profile-photo.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
