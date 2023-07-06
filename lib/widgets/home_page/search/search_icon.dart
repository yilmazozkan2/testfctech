import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../controller/search_field_controller.dart';

class SearchIcon extends StatelessWidget {
  SearchIcon({super.key});
  final SearchFieldController _searchFieldController = Get.find();

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => _searchFieldController.onSearch(),
        icon: Icon(
          Icons.search,
          size: 25.0,
          color: ColorConstants.searchIconPrimary,
        ));
  }
}
