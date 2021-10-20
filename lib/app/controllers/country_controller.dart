import 'package:get/get.dart';
import 'package:worki/app/data/models/country_model.dart';

class CountryController extends GetxController {
  CountryModel _countryModel = CountryModel();

  CountryModel get countryModel => _countryModel;

  @override
  void onInit() {
    super.onInit();
    this._countryModel = Get.arguments as CountryModel;
  }
}
