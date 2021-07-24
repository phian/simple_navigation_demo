import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_navigation_demo/services/todo_cache.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Provider<TodoCache>(
      create: (_) => TodoCache(),
      builder: (_, __) {
        return SafeArea(
          child: Scaffold(
            body: Consumer<TodoCache>(
              builder: (_, cache, __) {
                return ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  physics: AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics(),
                  ),
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        Text(cache.list[index].title),
                        Text(cache.list[index].description),
                      ],
                    );
                  },
                  separatorBuilder: (_, index) {
                    return SizedBox(height: 20.0);
                  },
                  itemCount: cache.list.length,
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
        );
      },
    );
  }
}
