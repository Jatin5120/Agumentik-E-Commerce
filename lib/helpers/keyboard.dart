import 'package:get/get.dart';

class KeyboardHelper {
  static void hideKeyboard() {
    Get.focusScope?.unfocus();
  }
}
