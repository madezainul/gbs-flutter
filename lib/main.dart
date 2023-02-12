import 'package:flutter/material.dart';
import 'package:gbs/pages/home/book_detail.dart';
import 'package:gbs/pages/home/book_page.dart';
import 'package:gbs/pages/home/cart_page.dart';
import 'package:gbs/pages/home/main_page.dart';
import 'package:gbs/pages/home/user_page.dart';
import 'package:gbs/pages/sign_in_page.dart';
import 'package:gbs/pages/sing_up_page.dart';
import 'package:gbs/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SingUpPage(),
        '/home': (context) => const MainPage(),
        '/books': (context) => const BookPage(),
        '/book-details': (context) => const BookDetail(),
        '/carts': (context) => const CartPage(),
        '/users': (context) => const UserPage(),
      },
    );
  }
}
