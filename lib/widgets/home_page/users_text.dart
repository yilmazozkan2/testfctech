import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class UsersText extends StatelessWidget {
  const UsersText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'USERS',
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: ColorConstants.usersPrimary,
              fontSize: 24,
            ),
      ),
    );
  }
}
