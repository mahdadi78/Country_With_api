import 'package:basketball_court/MODELS/all_countris_model.dart';
import 'package:basketball_court/SERVICES/service.dart';
import 'package:get/get.dart';

class AllCountryController extends GetxController {
  var countryList = <CountryModel>[].obs;
  Service service = Service();
  var isLoading = false.obs;

  @override
  void onInit() {
    callMethod();

    super.onInit();
  }

  callMethod() async {
    isLoading.value = true;

    var result = await service.getData();
    if (result.isNotEmpty) {
      countryList.assignAll(result);
    } else {}
    isLoading.value = false;
  }
}
