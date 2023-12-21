import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MembersList extends StatelessWidget {
  final List<String> members;

  const MembersList({super.key, required this.members});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      height: members.length * 49.0,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              members[index],
              style: const TextStyle(
                fontSize: 12.0,
                fontFamily: 'Montserrat',
              ),
            ),
          );
        },
      ),
    );
  }
}
