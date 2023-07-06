import 'package:flutter/material.dart';

class UserNameRichText extends StatelessWidget {
  const UserNameRichText({
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
            text: 'Username: ',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          TextSpan(
            text: '${args[0]}',
            style:
                Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
