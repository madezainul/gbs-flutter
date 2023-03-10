import 'package:flutter/material.dart';
import 'package:gbs/pages/Widgets/book_card.dart';
import 'package:gbs/pages/Widgets/book_card_grid.dart';
import 'package:gbs/theme.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget searchBar() {
      return Container(
        decoration: BoxDecoration(
          color: blueColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        padding: EdgeInsets.only(
          top: 40,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: defaultMargin,
                right: defaultMargin,
                bottom: 10,
              ),
              height: 40,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor1,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: TextFormField(
                  style: primaryTextStyle,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Search',
                    hintStyle: secondaryTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget bookList() {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            mainAxisExtent: 250,
          ),
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/book-details');
              },
            ),
            BookCardGrid(),
            BookCardGrid(),
            BookCardGrid(),
            BookCardGrid(),
            BookCardGrid(),
            BookCardGrid(),
            BookCardGrid(),
            BookCardGrid(),
            BookCardGrid(),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            searchBar(),
            bookList(),
          ],
        ),
      ),
    );
  }
}
