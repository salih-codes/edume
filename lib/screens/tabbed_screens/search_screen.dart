import 'package:edume/models/category.dart';
import 'package:edume/models/class.dart';
import 'package:flutter/material.dart';

//Widget imports
import '../../widgets/class_card.dart';
import '../../widgets/page_shell.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String searchTerm = 'cooking';

    return PageShell(
      pageBody: searchTerm.isEmpty
          ? SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 40.0,
                      horizontal: 25,
                    ),
                    child: Text(
                      'Popular Tags',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3051),
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (ctx, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              sampleCategories[i].title,
                              style: const TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: Color(0xFF53588A),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Divider(
                              height: 10,
                              color: Color(0xFFD8DCFF),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: sampleCategories.length,
                  ),
                ],
              ),
            )
          : SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 30.0,
                      horizontal: 25,
                    ),
                    child: Text(
                      'We found 10 classes',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3051),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (ctx, i) {
                          return ClassCard(
                            instructorName: sampleClassData[i].instructorName,
                            classDescription:
                                sampleClassData[i].classDescription,
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
                  ),
                ],
              ),
            ),
      bannerComponent: TextField(
        style: const TextStyle(fontSize: 16, height: 1.5),
        decoration: InputDecoration(
          focusColor: Colors.transparent,
          // focusedBorder: InputBorder.none,
          fillColor: Colors.white,
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: 'Try "Easy ways to write a novel"',
          contentPadding: const EdgeInsets.symmetric(vertical: -15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: (value) {
          // do something
        },
      ),
    );
  }
}
