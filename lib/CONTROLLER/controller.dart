import 'package:basketball_court/MODELS/all_countris_model.dart';
import 'package:basketball_court/MODELS/person_model.dart';
import 'package:basketball_court/SERVICES/service.dart';
import 'package:get/get.dart';

class AllCountryController extends GetxController {
  var countryList = <CountryModel>[].obs;
  // ignore: non_constant_identifier_names
  var isLoading_country = false.obs;

  var userList = <User>[].obs;
  // ignore: non_constant_identifier_names
  var isLoading_user = false.obs;

  Service service = Service();

  @override
  void onInit() {
    callCountry();
    callUser();

    super.onInit();
  }

  callCountry() async {
    isLoading_country.value = true;

    var result = await service.getCountry();
    if (result.isNotEmpty) {
      countryList.assignAll(result);
    } else {}
    isLoading_country.value = false;
  }

  callUser() async {
    isLoading_user.value = true;

    var result = await service.getUser();
    if (result.isNotEmpty) {
      userList.assignAll(result);
    } else {}
    isLoading_user.value = false;
  }
}
