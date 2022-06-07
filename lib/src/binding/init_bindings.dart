import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:instagram_clonecoding/src/controller/bottom_nav_controller.dart';

class InitBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true); // 하단 계속 살아있게 -> 해당 인스턴스는 앱 종료전까지 살아있게
  }
}