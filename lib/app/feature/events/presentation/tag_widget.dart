import 'package:flutter/material.dart';
class TagWidget extends StatefulWidget {
  final List<String> tags;

  TagWidget({required this.tags});

  @override
  _TagWidgetState createState() => _TagWidgetState();
}

class _TagWidgetState extends State<TagWidget> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // расстояние между контейнерами
      runSpacing: 8.0, // расстояние между строками
      children: widget.tags.map((item) {
        return Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xFFCCCCCC),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            item,
            style: const TextStyle(
                fontSize: 12,
                fontFamily: 'Montserrat'
            ),
          ),
        );
      }).toList(),
    );

  }
}