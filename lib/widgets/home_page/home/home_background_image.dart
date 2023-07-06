import 'package:flutter/material.dart';
import 'package:testfctech/widgets/home_page/home/home_body.dart';

class HomeBackgroundImage extends StatelessWidget {
  const HomeBackgroundImage({super.key});
  final String _assetImageUrl = 'assets/images/home_background.png';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_assetImageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: HomeBody(),
      ),
    );
  }
}
