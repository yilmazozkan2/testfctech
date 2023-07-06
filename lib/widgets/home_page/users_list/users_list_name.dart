import 'package:flutter/material.dart';

import '../../../constants/padding.dart';

class UsersListName extends StatelessWidget {
  const UsersListName({
    super.key,
    required this.users,
    required this.index,
  });
  final List<dynamic> users;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjeDecorations.homeListTileTitlePadding,
      child: Text(
        users[index]['name'],
        style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 16),
      ),
    );
  }
}
