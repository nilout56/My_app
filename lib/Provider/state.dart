import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:my_app_project/models/destination.dart';
import 'package:my_app_project/screens/menu_list.dart';
class Todo with ChangeNotifier {
  List<dynamic> tasks = [];

  void add(String text){
    tasks.add(text);
    notifyListeners();
  }
  void edit(int index, newitem){
    tasks[index] = newitem;
    notifyListeners();

  }
  void delete(int index){
    tasks.removeAt(index);
    notifyListeners();
    }
    final List<Destination> _items = [];


  void up(Destination item) {
    _items.add(item);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes all items from the cart.
  void removeAll() {
    _items.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
  
}