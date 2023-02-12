import 'package:flutter/material.dart';
import 'package:gbs/theme.dart';

class BookCardGrid extends StatelessWidget {
  const BookCardGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor1,
      ),
      child: Column(
        children: [
          Container(
            height: 190,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(
                  'assets/laut.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Text(
                'Laut Bercerita',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: regular,
                ),
              ),
              Text(
                'Rp 90.000',
                style: priceTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
