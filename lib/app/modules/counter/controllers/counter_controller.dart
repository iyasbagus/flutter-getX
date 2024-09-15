import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar('Warning', 'Udah ahh cape',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.yellowAccent);
    } else {
      bilangan.value++;
    }
  }

  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar('Warning', 'Minimal Nol Jancog',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: const Color.fromARGB(255, 234, 50, 37));
    } else {
      bilangan.value--;
    }
  }

  void reset() {
    bilangan.value = 0;
  }
}
