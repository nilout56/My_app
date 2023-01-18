import 'package:get/get.dart';

class MyController extends GetxController{
  var items = 0.obs;
  increment(){
      items.value++;
  }
  decrement(){
      items.value--;
  }
}