import 'package:get/get.dart';
import 'package:testfctech/routes/routes.dart';

import '../pages/details_page.dart';
import '../pages/home_page.dart';

abstract class Pages {
  static List<GetPage> pages = [
    GetPage(name: Routes.home_page, page: (() => HomePage())),
    GetPage(name: Routes.details_page, page: (() => DetailsPage())),
  ];
}
