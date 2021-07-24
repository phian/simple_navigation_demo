import 'dart:collection';

import 'package:simple_navigation_demo/models/todo-_model.dart';

class TodoCache {
  var _index = -1;

  final List<Todo> _todos = [
    Todo("Item 1", "First item"),
    Todo("Item 2", "Second item"),
    Todo("Item 3", "Third item"),
  ];

  void addItem(Todo item) {
    _todos.add(item);
  }

  int get itemIndex => _index;

  set setItemIndex(int index) {
    if (index >= 0 && index < _todos.length) {
      _index = index;
    }
  }

  UnmodifiableListView<Todo> get list => UnmodifiableListView<Todo>(_todos);
}
