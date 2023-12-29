import 'package:athletic_hub/app/feature/filters/domain/models/filter_bloc_model.dart';
import 'package:athletic_hub/app/feature/filters/domain/models/filter_model.dart';
import 'package:athletic_hub/app/feature/filters/presentation/filters.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import '../feature/events/presentation/event_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: Container(
          padding: const EdgeInsets.fromLTRB(165, 25, 165, 25),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffa5fddd),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0, 5),
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'ATHLETIC-HUB ',
                style: GoogleFonts.montserrat(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  height: 1.2175,
                  color: const Color(0xff000000),
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'войти',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    height: 1.2175,
                    color: const Color(0xff1f2029),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 80.w),
          child: Row(
            children: [
              const Expanded(
                child: EventList(),
              ),
              SizedBox(
                width: 100.w,
              ),
              const FilterWidget(
                filters: [
                  FilterBlocModel(
                    id: "123e",
                    title: "Виды спорта",
                    filters: [
                      FilterModel(filterId: "1", filter: "Волейбол"),
                      FilterModel(filterId: "2", filter: "Футбол"),
                      FilterModel(filterId: "3", filter: "Теннис"),
                      FilterModel(filterId: "4", filter: "Водное поло"),
                    ],
                  ),
                   FilterBlocModel(
                    id: "123e",
                    title: "Время года",
                    filters: [
                      FilterModel(filterId: "1", filter: "Зима"),
                      FilterModel(filterId: "2", filter: "Лето"),
                      FilterModel(filterId: "3", filter: "Осень"),
                      FilterModel(filterId: "4", filter: "Весна"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
