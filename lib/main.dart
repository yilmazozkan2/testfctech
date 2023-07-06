import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:testfctech/constants/colors.dart';
import 'package:testfctech/controller/search_field_controller.dart';
//Routes
import 'package:testfctech/routes/pages.dart';
import 'package:testfctech/routes/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: ColorConstants.statusBarBackground,
      statusBarBrightness: Brightness.light,
    ),
  );
  Get.lazyPut(() => SearchFieldController());

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home_page,
      getPages: Pages.pages,
    );
  }
}
