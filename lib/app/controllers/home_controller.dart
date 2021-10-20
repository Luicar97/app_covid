import 'package:get/get.dart';
import 'package:worki/app/data/models/country_model.dart';
import 'package:worki/app/data/provider/country_provider.dart';

class HomeController extends GetxController {
  //Map<int, CountryModel> mapCountryModel = {};
  List<CountryModel> countryModel = [];

  bool orderItems = true;
  bool orderItemsByletter = true;

  @override
  void onInit() {
    CountryProvider().getCountryMap(
      onSuccess: (data) {
        this.countryModel.addAll(data);
        update();
      },
      onError: (error) {
        print(error);
      },
    );
    super.onInit();
  }

  getOrderCountryModel(bool bool) {
    this.orderItems = !bool;

    if (this.orderItems) {
      this
          .countryModel
          .sort((a, b) => -a.totalConfirmed!.compareTo(b.totalConfirmed!));
    } else {
      this
          .countryModel
          .sort((a, b) => a.totalConfirmed!.compareTo(b.totalConfirmed!));
    }

    update();
  }

  getSortByLetter(bool bool) {
    this.orderItemsByletter = !bool;
    if (this.orderItemsByletter) {
      this.countryModel.sort((a, b) => a.country!.compareTo(b.country!));
    } else {
      this.countryModel.sort((a, b) => -a.country!.compareTo(b.country!));
    }

    update();
  }
}
