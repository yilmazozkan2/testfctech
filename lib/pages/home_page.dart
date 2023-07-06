import 'package:flutter/material.dart';
import 'package:testfctech/widgets/home_page/home/home_background_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeBackgroundImage(),
      ),
    );
  }
}
