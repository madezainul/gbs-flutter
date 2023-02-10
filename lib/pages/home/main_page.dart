import 'package:flutter/material.dart';
import 'package:gbs/pages/home/book_page.dart';
import 'package:gbs/pages/home/cart_page.dart';
import 'package:gbs/pages/home/home_page.dart';
import 'package:gbs/pages/home/user_page.dart';
import 'package:gbs/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget bottomNav() {
      return BottomNavigationBar(
        backgroundColor: backgroundColor1,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          print(value);
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              'assets/dashboard.png',
              width: 20,
              color: currentIndex == 0 ? primaryColor : secondaryTextColor,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              'assets/books.png',
              width: 20,
              color: currentIndex == 1 ? primaryColor : secondaryTextColor,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              'assets/cart.png',
              width: 26,
              color: currentIndex == 2 ? primaryColor : secondaryTextColor,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              'assets/users.png',
              width: 20,
              color: currentIndex == 3 ? primaryColor : secondaryTextColor,
            ),
          ),
        ],
      );
    }

    Widget currentPage() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return BookPage();
        case 2:
          return CartPage();
        case 3:
          return UserPage();

        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      bottomNavigationBar: bottomNav(),
      body: currentPage(),
    );
  }
}
