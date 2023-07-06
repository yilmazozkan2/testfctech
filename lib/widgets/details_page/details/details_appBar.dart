import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testfctech/routes/routes.dart';

import '../../../constants/colors.dart';

class DetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConstants.appBarBackground,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Get.toNamed(Routes.home_page);
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(46.0);
}
