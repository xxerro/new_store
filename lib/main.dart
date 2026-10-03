import 'package:flutter/material.dart';
import 'package:new_store/screens/discover_screen.dart';
import 'package:new_store/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/discover_screen',
      routes: {
        '/login_screen': (context) => const LoginScreen(),
        '/discover_screen': (context) => const DiscoverScreen(),
      },
    );
  }
}
