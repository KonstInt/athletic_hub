import 'package:flutter/material.dart';
import 'members_list.dart';
class InfoButton extends StatelessWidget {
  final List<String> members;

  InfoButton({super.key, required this.members});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        RenderBox renderBox = context.findRenderObject() as RenderBox;
        Offset offset = renderBox.localToGlobal(Offset.zero);

        OverlayEntry overlayEntry;

        overlayEntry = OverlayEntry(
          builder: (context) => Positioned(
            top: offset.dy + 40.0, // 40.0 - отступ от кнопки
            left: offset.dx,
            child: Material(
              color: Colors.transparent,
              child: MembersList( members: members),
            ),
          ),
        );
        Overlay.of(context).insert(overlayEntry);

        Future.delayed(const Duration(seconds: 2), () {
          overlayEntry.remove();
        });
      },

      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.info_outline_rounded,
          size: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}