import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ClassCard extends StatelessWidget {
  const ClassCard({
    Key? key,
    required this.coverImageUrl,
    required this.instructorName,
    required this.price,
    required this.classDescription,
    required this.categories,
    required this.videoCount,
    required this.rating,
  }) : super(key: key);

  final String coverImageUrl;
  final String instructorName;
  final double price;
  final String classDescription;
  final List categories;
  final int videoCount;
  final double rating;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

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
                  coverImageUrl,
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          instructorName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '\$ $price',
                          style: const TextStyle(
                            color: Color(0xFF820f23),
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      classDescription,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFa1a1a1),
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      children: categories.map((category) {
                        return Row(
                          children: [
                            Text(
                              String.fromCharCode(0x2022),
                              style: const TextStyle(fontSize: 25),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar(
                          initialRating: rating,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemSize: 14,
                          itemCount: 5,
                          ratingWidget: RatingWidget(
                            full: Image.asset('assets/images/Full.png'),
                            half: Image.asset('assets/images/Half.png'),
                            empty: Image.asset('assets/images/None.png'),
                          ),
                          itemPadding: const EdgeInsets.symmetric(
                            horizontal: 4.0,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Text(
                          '$videoCount videos',
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
  }
}
