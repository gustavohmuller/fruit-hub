import 'package:fruithub/screens/authentication_screen.dart';
import 'package:fruithub/screens/home_screen.dart';
import 'package:fruithub/screens/order_complete_screen.dart';
import 'package:fruithub/screens/order_list_screen.dart';
import 'package:fruithub/screens/product_description_screen.dart';
import 'package:fruithub/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fruit Hub",
      theme: ThemeData(
        primaryColor: const Color(0XFFFFFFFF),
      ),
      initialRoute: "/welcome",
      routes: {
        "/welcome": (context) => const WelcomeScreen(),
        "/authentication": (context) => const AuthenticationScreen(),
        "/home": (context) => const HomeScreen(),
        "/product_description": (context) => const ProductDescriptionScreen(),
        "/order_list": (context) => const OrderListScreen(),
        "/order_complete": (context) => const OrderCompleteScreen(),
      },
    );
  }
}
