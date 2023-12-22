import 'package:athletic_hub/app/util/themes/extensions/build_context_ext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:athletic_hub/app/feature/events_team/domain/bloc/event_team_bloc.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'tag_widget.dart';
import '../../events_team/presentation/events_team_list.dart';
import "../domain/models/event_model.dart";

class EventCard extends StatelessWidget {
  final EventModel eventModel;
  const EventCard({super.key, required this.eventModel});

  @override 
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFE2E2E2),
        borderRadius: BorderRadius.circular(10.r),
      ),
      padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 30.w),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: CachedNetworkImage(
                  width: 400.r,
                  height: 400.r,
                  imageUrl: eventModel.imagePath,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 15.w,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.access_time,
                    size: 16,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    DateFormat("HH:mm").format(eventModel.time),
                    style: GoogleFonts.montserrat(
                        fontSize: 14.0, color: context.colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6.w,
              ),
              Row(
                children: [
                  Icon(
                    Icons.date_range_sharp,
                    size: 16.sp,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    DateFormat('dd.MM.yyyy').format(eventModel.time),
                    style: GoogleFonts.montserrat(
                        fontSize: 14.0, color: context.colors.black),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_on_outlined, size: 16.sp),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      textStyle: GoogleFonts.montserrat(
                          fontSize: 14.0, color: context.colors.black),
                    ),
                    child: const Text('Показать на карте'),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            width: 57.w,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  eventModel.title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: 24.0, color: context.colors.black),
                ),
                const SizedBox(
                  height: 6,
                ),
                Expanded(
                  child: Text(
                    eventModel.text,
                    style: GoogleFonts.montserrat(
                        fontSize: 14.0, color: context.colors.black),
                    maxLines: 9,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                TagWidget(tags: eventModel.tags),
              ],
            ),
          ),
          BlocProvider(
            create: (context) => GetIt.I<EventTeamBloc>()
              ..add(EventTeamEvent.loadTeams(eventId: eventModel.id)),
            child: JoinTeamList(eventId: eventModel.id),
          ),
        ],
      ),
    );
  }
}
