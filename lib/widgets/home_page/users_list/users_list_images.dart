import 'package:flutter/material.dart';

class UserListImages extends StatelessWidget {
  const UserListImages({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 27,
      backgroundImage: NetworkImage(
        'https://picsum.photos/200/300?random=1',
      ),
    );
  }
}
