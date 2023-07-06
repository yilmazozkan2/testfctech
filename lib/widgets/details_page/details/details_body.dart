import 'package:flutter/material.dart';

import '../../../constants/padding.dart';
//Widgets
import 'package:testfctech/widgets/details_page/long_details/long_details_list_view.dart';
import 'package:testfctech/widgets/details_page/short_details/short_details_list_view.dart';
import 'package:testfctech/widgets/details_page/user_circle_avatar.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    super.key,
    required this.args,
  });
  final args;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjeDecorations.detailsBodyColumnPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          UserCircleAvatar(),
          ShortDetailsListView(args: args),
          LongDetailsListView(args: args),
        ],
      ),
    );
  }
}
