import 'package:athletic_hub/app/util/themes/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TagWidget extends StatefulWidget {
  final List<String> tags;

  const TagWidget({super.key, required this.tags});

  @override
  _TagWidgetState createState() => _TagWidgetState();
}

class _TagWidgetState extends State<TagWidget> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: widget.tags.map((item) {
        return Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xffc5c4cb),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(item,
              style: GoogleFonts.montserrat(
                  fontSize: 13.0, color: context.colors.black)),
        );
      }).toList(),
    );
  }
}
