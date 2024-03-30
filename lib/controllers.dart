import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var books = 0.obs;
  var Pens = 0.obs;
  int get sum => books.value + Pens.value;
  //the method for increment and decrement button
  //books
  increment() {
    books.value++;
  }

  decrement() {
    if (books.value <= 0) {
      Get.snackbar("Buying books", "Cannot be less than 0",
          icon: Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3));
    } else {
      books.value--;
    }
  }

  //pens
  incrementPen() {
    Pens.value++;
  }

  decrementPen() {
    if (Pens.value <= 0) {
      Get.snackbar("Buying Pens", "Cannot be less than 0",
          icon: Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3));
    } else {
      Pens.value--;
    }
  }
}
