import 'package:flutter/material.dart';

import '../../../constants/padding.dart';

//RichText
import 'rich_text/fullname_rich_text.dart';
import 'rich_text/username_rich_text.dart';
import 'rich_text/website_rich_text.dart';

class ShortDetailsListView extends StatelessWidget {
  const ShortDetailsListView({
    super.key,
    required this.args,
  });
  final args;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: ProjeDecorations.detailsShortDetailsPadding,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UserNameRichText(args: args),
            FullNameRichText(args: args),
            WebsiteRichText(args: args),
          ],
        )
      ],
    );
  }
}
