import 'package:desafio_sprint_2_/screens/authentication_screen.dart';
import 'package:desafio_sprint_2_/screens/home_screen.dart';
import 'package:desafio_sprint_2_/screens/order_complete_screen.dart';
import 'package:desafio_sprint_2_/screens/order_list_screen.dart';
import 'package:desafio_sprint_2_/screens/product_description_screen.dart';
import 'package:desafio_sprint_2_/screens/welcome_screen.dart';
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
