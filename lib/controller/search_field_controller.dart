import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchFieldController extends GetxController {
  final textEditingController = TextEditingController();
  void onSearch() {}

  @override
  void update([List<Object>? ids, bool condition = true]) {
    super.update(ids, condition);
  }

  @override
  void onInit() {
    print(
        "SearchFieldController'dan kullanılmadığında ram den silinecek bir TextEditingController nesnesi oluştu");
    super.onInit();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
