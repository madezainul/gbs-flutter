import 'package:flutter/material.dart';
// import 'package:gbs/pages/Widgets/banner_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gbs/pages/Widgets/book_card.dart';
import 'package:gbs/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = [
      Container(
        height: 100,
        width: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(
              'assets/payday.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: 100,
        width: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(
              'assets/payday.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: 100,
        width: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(
              'assets/payday.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ];

    Widget header() {
      return Container(
        decoration: BoxDecoration(
          color: blueColor,
        ),
        child: Container(
          margin: EdgeInsets.only(
            top: 10,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Made',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 54,
                height: 54,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/fotogg.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget searchBar() {
      return Container(
        decoration: BoxDecoration(
          color: blueColor,
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

    Widget banner() {
      return Container(
        color: blueColor,
        padding: const EdgeInsets.only(bottom: 10),
        child: CarouselSlider(
          options: CarouselOptions(
            // height: 100.0,
            viewportFraction: 0.5,
            autoPlay: true,
            aspectRatio: 4 / 1,
            enlargeCenterPage: true,
          ),
          items: imageSliders,
        ),
      );
    }

    Widget categoryTitle() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Kategori',
              style: blueTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'Lihat semua',
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: regular,
              ),
            ),
          ],
        ),
      );
    }

    Widget category() {
      return Container(
        margin: const EdgeInsets.only(
          top: 10,
          left: 20,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: blueColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/horror.png',
                      width: 14,
                      color: backgroundColor1,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Horror',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: blueColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/distopian.png',
                      width: 14,
                      color: backgroundColor1,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Dystopian',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: blueColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/mystery.png',
                      width: 14,
                      color: backgroundColor1,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Mystery',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: blueColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/romance.png',
                      width: 14,
                      color: backgroundColor1,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Romance',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: blueColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/pencil.png',
                      width: 14,
                      color: backgroundColor1,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Adventure',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: blueColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/pencil.png',
                      width: 14,
                      color: backgroundColor1,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Comedy',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularBookstitle() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Buku-buku terpopuler',
              style: blueTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'Lihat semua',
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: regular,
              ),
            ),
          ],
        ),
      );
    }

    Widget popularBooks() {
      return Container(
        margin: const EdgeInsets.only(
          top: 10,
          left: 20,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Row(
                children: const [
                  BookCard(),
                  BookCard(),
                  BookCard(),
                  BookCard(),
                  BookCard(),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Buku-buku terbaru',
              style: blueTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'Lihat semua',
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: regular,
              ),
            ),
          ],
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: const EdgeInsets.only(
          top: 10,
          left: 20,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Row(
                children: const [
                  BookCard(),
                  BookCard(),
                  BookCard(),
                  BookCard(),
                  BookCard(),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        searchBar(),
        banner(),
        categoryTitle(),
        category(),
        popularBookstitle(),
        popularBooks(),
        newArrivalsTitle(),
        newArrivals(),
      ],
    );
  }
}
