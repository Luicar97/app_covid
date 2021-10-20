import 'package:get/get.dart';
import 'package:worki/app/ui/pages/country_page/country_page.dart';
import 'package:worki/app/ui/pages/home_page/home_page.dart';

class Routes {
  static final routes = [
    GetPage(name: '/', page: () => HomePage()),
    GetPage(name: '/country', page: () => CountryPage()),
  ];
}
