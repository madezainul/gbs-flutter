import 'package:flutter/material.dart';
import 'package:gbs/theme.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Book Details Page',
          style: primaryTextStyle,
        ),
      ),
    );
  }
}
