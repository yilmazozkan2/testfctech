import 'package:flutter/material.dart';

class PhoneRichText extends StatelessWidget {
  const PhoneRichText({
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
              text: 'Phone: ', style: Theme.of(context).textTheme.labelLarge),
          TextSpan(
            text: '${args[5]}',
            style:
                Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
