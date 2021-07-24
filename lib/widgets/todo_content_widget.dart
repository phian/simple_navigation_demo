import 'package:flutter/material.dart';

class TodoContentWidget extends StatelessWidget {
  final String title;
  final String description;

  TodoContentWidget({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextContentWidget(content: title),
        const SizedBox(height: 10.0),
        TextContentWidget(
          content: description,
          customStyle: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}

class TextContentWidget extends StatelessWidget {
  final String content;
  final TextStyle? customStyle;

  TextContentWidget({required this.content, this.customStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ).merge(customStyle),
    );
  }
}
