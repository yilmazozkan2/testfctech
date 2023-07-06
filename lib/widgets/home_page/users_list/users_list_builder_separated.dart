import 'package:flutter/material.dart';

//Widgets
import 'package:testfctech/widgets/home_page/users_list/users_list_images.dart';
import 'package:testfctech/widgets/home_page/users_list/users_list_name.dart';
import 'package:testfctech/widgets/home_page/users_list/users_list_number_buttons.dart';
import 'package:testfctech/widgets/home_page/users_list/users_list_separator_builder.dart';
import 'package:testfctech/widgets/home_page/users_list/users_list_subtitle.dart';

import '../../../constants/padding.dart';

class UsersListBuilderSeparated extends StatelessWidget {
  const UsersListBuilderSeparated({
    super.key,
    required this.users,
  });
  final List<dynamic> users;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: ProjeDecorations.homeListTilePadding,
          child: ListTile(
            leading: UserListImages(),
            title: UsersListName(users: users, index: index),
            subtitle: UsersListSubtitle(users: users, index: index),
            trailing: UsersListNumberButtons(index: index),
          ),
        );
      },
      separatorBuilder: UsersListSeparatorBuilder,
    );
  }
}
