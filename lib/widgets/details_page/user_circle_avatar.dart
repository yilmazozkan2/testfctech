import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class UserCircleAvatar extends StatelessWidget {
  const UserCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 55,
      backgroundImage: NetworkImage('https://picsum.photos/200/300?random=1'),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              radius: 12,
              backgroundColor: ColorConstants.avatarAddIconBackground,
              child: Icon(
                Icons.add,
                color: ColorConstants.avatarAddIconPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
