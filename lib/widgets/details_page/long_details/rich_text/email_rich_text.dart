import 'package:flutter/material.dart';

class EmailRichText extends StatelessWidget {
  const EmailRichText({
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
            text: 'Email: ',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          TextSpan(
            text: '${args[6]}',
            style:
                Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
