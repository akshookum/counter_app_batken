import 'package:counter_app/secont/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstController extends GetxController {
  Rx<int> san = 0.obs;
  RxInt count = 0.obs;

  void kemit() => san.value = san.value - 1;
  void kosh() => san.value++;
}

void otkoz(BuildContext context, int san) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => SecondPage(
        sanKelet: san,
      ),
    ),
  );
}

class CetXController {}
