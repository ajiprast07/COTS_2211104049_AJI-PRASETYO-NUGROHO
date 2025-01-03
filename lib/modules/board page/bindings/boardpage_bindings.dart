import 'package:get/get.dart';
import 'package:pertemuan_16/modules/board%20page/controller/boardpage_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
