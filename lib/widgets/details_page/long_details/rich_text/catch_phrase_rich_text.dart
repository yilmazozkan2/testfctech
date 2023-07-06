import 'package:flutter/material.dart';

class CatchPhraseRichText extends StatelessWidget {
  const CatchPhraseRichText({
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
            text: 'Catch Phrase: ',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          TextSpan(
            text: '${args[4]}',
            style:
                Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
