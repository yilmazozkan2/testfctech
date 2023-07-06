import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/details_page/details/details_background_image.dart';
import 'package:testfctech/widgets/details_page/details/details_appBar.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key});

  final _args = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: DetailsAppBar(),
        body: DetailsBackgroundImage(args: _args),
      ),
    );
  }
}
