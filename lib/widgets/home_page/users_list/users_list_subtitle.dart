import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:testfctech/routes/routes.dart';

class UsersListSubtitle extends StatelessWidget {
  const UsersListSubtitle({
    super.key,
    required this.users,
    required this.index,
  });
  final List<dynamic> users;
  final int index;

  List<dynamic> get DetailsArguments {
    return [
      users[index]['username'],
      users[index]['name'],
      users[index]['website'],
      users[index]['company']['name'],
      users[index]['company']['catchPhrase'],
      users[index]['phone'],
      users[index]['email'],
      users[index]['address']['street'],
      users[index]['address']['suite'],
      users[index]['address']['city'],
      users[index]['address']['zipcode'],
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          Routes.details_page,
          arguments: DetailsArguments,
        );
      },
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
        style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 12),
      ),
    );
  }
}
