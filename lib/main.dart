import 'package:amazon_app_store/view/auth_screen/auth_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AmazonApp());
}

class AmazonApp extends StatelessWidget {
  const AmazonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
    );
  }
}
