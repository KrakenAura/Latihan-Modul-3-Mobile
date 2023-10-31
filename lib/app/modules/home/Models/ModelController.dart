import 'package:get/get.dart';
import 'package:tes/app/data/api/ApiService.dart';
import 'package:tes/app/modules/home/Models/Model.dart';

class ModelController extends GetxController {
  var models = <Model>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    try {
      isLoading(true);
      var data = await ApiService().fetchData();
      if (data != null) {
        // Menggunakan add jika data adalah Model tunggal
        models.add(data);
      }
    } finally {
      isLoading(false);
    }
  }
}
