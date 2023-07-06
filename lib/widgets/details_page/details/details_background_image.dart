import 'package:flutter/material.dart';
import 'package:testfctech/widgets/details_page/details/details_body.dart';

class DetailsBackgroundImage extends StatelessWidget {
  const DetailsBackgroundImage({
    super.key,
    required this.args,
  });
  final args;
  final String _imageUrl = 'assets/images/details_background.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(_imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: DetailsBody(args: args),
    );
  }
}
