import 'package:flutter/material.dart';

class AddressRichText extends StatelessWidget {
  const AddressRichText({
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
            text: 'Adress: ',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          TextSpan(
            text: '${args[7]}, ${args[8]}, ${args[9]}, ${args[10]}',
            style:
                Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
