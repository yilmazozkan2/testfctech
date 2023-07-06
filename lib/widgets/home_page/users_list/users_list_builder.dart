import 'package:flutter/material.dart';
import 'package:testfctech/constants/padding.dart';
import 'package:testfctech/widgets/home_page/users_list/users_list_builder_separated.dart';

class UsersListBuilder extends StatelessWidget {
  const UsersListBuilder({
    super.key,
    required this.futureResponse,
    required this.filteredNames,
  });
  final futureResponse;
  final List<dynamic> filteredNames;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: ProjeDecorations.homeListBuilder,
        child: FutureBuilder(
          future: futureResponse,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return UsersListBuilderSeparated(users: filteredNames);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
