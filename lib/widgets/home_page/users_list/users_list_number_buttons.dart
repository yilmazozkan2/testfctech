import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class UsersListNumberButtons extends StatelessWidget {
  const UsersListNumberButtons({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: ColorConstants.numberButtonBackground,
        minimumSize: Size.zero,
      ),
      onPressed: null,
      child: Text(
        '${index + 1}',
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: ColorConstants.numberButtonPrimary,
            ),
      ),
    );
  }
}
