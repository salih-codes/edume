// ignore_for_file: prefer_const_constructors

import 'package:edume/models/class.dart';
import 'package:edume/widgets/page_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    List<Class> downloadedClasses = [
      Class(
        id: '1',
        instructorName: 'Gordon Ramsey',
        classDescription: 'Teaches cooking. Cooking is not easy',
        price: 49.99,
        thumbnail:
            'https://images.unsplash.com/photo-1551218808-94e220e084d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
        categories: [
          'Art',
          'Culinary',
          'Science',
        ],
        videoCount: 12,
        rating: 4.5,
      ),
      Class(
        id: '2',
        instructorName: 'Alice Waters',
        classDescription: 'Art of home cooking',
        price: 29.99,
        thumbnail:
            'https://images.unsplash.com/photo-1507048331197-7d4ac70811cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80',
        categories: [
          'Art',
          'Culinary',
          'Science',
        ],
        videoCount: 12,
        rating: 3.0,
      ),
      Class(
        id: '3',
        instructorName: 'Lisa Ling',
        classDescription: 'Teaches the art of photography',
        price: 49.99,
        thumbnail:
            'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
        categories: [
          'Art',
          'Science',
          'Creative',
        ],
        videoCount: 12,
        rating: 4.0,
      ),
      Class(
        id: '4',
        instructorName: 'Gordon Ramsey',
        classDescription: 'Teaches cooking. Cooking is not easy',
        price: 49.99,
        thumbnail:
            'https://images.unsplash.com/photo-1551218808-94e220e084d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
        categories: [
          'Art',
          'Culinary',
          'Science',
        ],
        videoCount: 12,
        rating: 4.0,
      ),
      Class(
        id: '5',
        instructorName: 'Alice Waters',
        classDescription: 'Art of home cooking',
        price: 29.99,
        thumbnail:
            'https://images.unsplash.com/photo-1507048331197-7d4ac70811cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80',
        categories: [
          'Art',
          'Culinary',
          'Science',
        ],
        videoCount: 12,
        rating: 3.0,
      ),
      Class(
        id: '6',
        instructorName: 'Lisa Ling',
        classDescription: 'Teaches the art of photography',
        price: 49.99,
        thumbnail:
            'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
        categories: [
          'Art',
          'Science',
          'Creative',
        ],
        videoCount: 12,
        rating: 4.0,
      ),
      Class(
        id: '7',
        instructorName: 'Gordon Ramsey',
        classDescription: 'Teaches cooking. Cooking is not easy',
        price: 49.99,
        thumbnail:
            'https://images.unsplash.com/photo-1551218808-94e220e084d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
        categories: [
          'Art',
          'Culinary',
          'Science',
        ],
        videoCount: 12,
        rating: 4.0,
      ),
      Class(
        id: '8',
        instructorName: 'Alice Waters',
        classDescription: 'Art of home cooking',
        price: 29.99,
        thumbnail:
            'https://images.unsplash.com/photo-1507048331197-7d4ac70811cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80',
        categories: [
          'Art',
          'Culinary',
          'Science',
        ],
        videoCount: 12,
        rating: 3.0,
      ),
      Class(
        id: '9',
        instructorName: 'Lisa Ling',
        classDescription: 'Teaches the art of photography',
        price: 49.99,
        thumbnail:
            'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
        categories: [
          'Art',
          'Science',
          'Creative',
        ],
        videoCount: 12,
        rating: 4.0,
      ),
    ];
    final mediaQuery = MediaQuery.of(context);

    return PageShell(
      pageBody: downloadedClasses.isEmpty
          ? Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 40,
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/no-downloaded-classes.png'),
                  Text(
                    textAlign: TextAlign.center,
                    'Your downloaded classes and lessons will show up here',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6D6D6D),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Explore Classes',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C3051),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Flex(
              direction: Axis.vertical,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25.0,
                      vertical: 30,
                    ),
                    child: ListView.builder(
                      itemBuilder: (ctx, i) {
                        return Dismissible(
                          direction: DismissDirection.endToStart,
                          key: UniqueKey(),
                          onDismissed: (DismissDirection direction) {
                            if (direction == DismissDirection.endToStart) {
                              print("Delete");
                              setState(() {
                                downloadedClasses.removeAt(i);
                              });
                            }
                          },
                          child: Card(
                            child: SizedBox(
                              height: mediaQuery.size.height * 0.1,
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                    ),
                                    child: SizedBox(
                                      height: double.infinity,
                                      width: 80,
                                      child: Image.network(
                                        downloadedClasses[i].thumbnail,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                downloadedClasses[i]
                                                    .instructorName,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            downloadedClasses[i]
                                                .classDescription,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFFa1a1a1),
                                              fontSize: 14,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              RatingBar(
                                                initialRating:
                                                    downloadedClasses[i].rating,
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
                                                itemPadding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 4.0,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              ),
                                              Text(
                                                '${downloadedClasses[i].videoCount}/${downloadedClasses[i].videoCount} videos',
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
                          ),
                        );
                      },
                      itemCount: downloadedClasses.length,
                    ),
                  ),
                ),
              ],
            ),
      bannerComponent: Padding(
        padding: const EdgeInsets.only(
          top: 50.0,
          left: 15,
          right: 15,
        ),
        child: Text(
          'Downloads',
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
