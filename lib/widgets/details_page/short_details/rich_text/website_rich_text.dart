import 'package:flutter/material.dart';

class WebsiteRichText extends StatelessWidget {
  const WebsiteRichText({
    super.key,
    required this.args,
  });
  final args;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Website: ',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          TextSpan(
            text: '${args[2]}',
            style:
                Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
