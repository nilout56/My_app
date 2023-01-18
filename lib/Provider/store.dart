import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class Store with ChangeNotifier {
  String connect = 'connected';
  int count = 0;
  int sum = 0;
  int sumAll = 0;


  void add(index) {
    count = index['count'];
    if (count >= 0) {
      count++;
      sum = count * int.parse(index['price']);
      print(sum);
    }
    print(index);
    notifyListeners();
  }

  void delete(index) {
    count = index['count'];
    if (count > 0) {
      count--;
      sum = count * int.parse(index['price']);
      print(sum);
    }
    notifyListeners();
  }

  void priceSum(List destination ){
    print(destination);
    notifyListeners();
  }

  void res(sum) {
    sumAll = sum;
    notifyListeners();
  }
}
