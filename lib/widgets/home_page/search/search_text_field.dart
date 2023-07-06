import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Constants
import 'package:testfctech/constants/colors.dart';
import 'package:testfctech/constants/radius.dart';
import 'package:testfctech/controller/search_field_controller.dart';

import 'package:testfctech/widgets/home_page/search/search_icon.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({
    super.key,
    required this.onChanged,
  });
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 328,
      height: 56,
      child: CupertinoSearchTextField(
        controller: SearchFieldController().textEditingController,
        onChanged: onChanged,
        decoration: BoxDecoration(
          borderRadius: ProjeRadius.searchTextField,
          color: ColorConstants.searchIconBackground,
        ),
        prefixIcon: SearchIcon(),
      ),
    );
  }
}
