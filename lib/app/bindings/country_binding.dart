
import 'package:get/get.dart';
import '../controllers/country_controller.dart';


class CountryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountryController>(() => CountryController());
  }
}