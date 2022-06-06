//package imports
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:carousel_slider/carousel_slider.dart';

//widget imports
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
                            Container(
                              height: 150,
                              width: double.infinity,
                              child: Image.network(
                                i.coverImageUrl,
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
                  return SizedBox(
                    height: mediaQuery.size.height * 0.2,
                    child: Card(
                      child: Row(
                        children: [
                          SizedBox(
                            height: double.infinity,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                              child: Image.network(
                                sampleClassData[i].coverImageUrl,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        sampleClassData[i].instructorName,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '\$ ${sampleClassData[i].price}',
                                        style: const TextStyle(
                                          color: Color(0xFF820f23),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    sampleClassData[i].classDescription,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFa1a1a1),
                                      fontSize: 14,
                                    ),
                                  ),
                                  Row(
                                    children: sampleClassData[i]
                                        .categories
                                        .map((category) {
                                      return Row(
                                        children: [
                                          Text(
                                            String.fromCharCode(0x2022),
                                            style: TextStyle(fontSize: 25),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          Text(category),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      );
                                    }).toList(),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      RatingBar(
                                        initialRating:
                                            sampleClassData[i].rating,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemSize: 14,
                                        itemCount: 5,
                                        ratingWidget: RatingWidget(
                                          full: Image.asset(
                                              'assets/images/Full.png'),
                                          half: Image.asset(
                                              'assets/images/Half.png'),
                                          empty: Image.asset(
                                              'assets/images/None.png'),
                                        ),
                                        itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 4.0,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      Text(
                                        '${sampleClassData[i].videoCount} videos',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
