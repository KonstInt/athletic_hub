import 'package:athletic_hub/app/util/themes/extensions/build_context_ext.dart';
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
  const EventCard({required this.eventModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  1320.0,
      height: 365.0,
      decoration: BoxDecoration(
        color: const Color(0xFFE2E2E2),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        children: [
          const SizedBox(width: 60.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 56),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: CachedNetworkImage(
                  width: 200,
                  height: 200,
                  imageUrl: eventModel.imagePath,
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 6,),
              Row(
                children: [
                  const Icon(
                    Icons.access_time,
                    size: 16,
                  ),
                  const SizedBox(width: 12,),
                  Text(
                    DateFormat("HH:mm").format(eventModel.time),
                    style: GoogleFonts.montserrat(
                      fontSize: 14.0,
                      color: context.colors.black
                      ),
                  ),
                ],
              ),
              const SizedBox(height: 6,),
              Row(
                children: [
                  const Icon(
                    Icons.date_range_sharp,
                    size: 16,
                  ),
                  const SizedBox(width: 12,),
                  Text(
                    DateFormat('dd.MM.yyyy').format(eventModel.time),
                    style: GoogleFonts.montserrat(
                      fontSize: 14.0,
                      color: context.colors.black
                      ),
                  ),
                ],
              ),

              Row(
                children: [
                  const Icon(
                      Icons.location_on_outlined,
                      size:16
                  ),
                  TextButton(
                    onPressed: () {

                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: const Size(160, 0),
                      textStyle: GoogleFonts.montserrat(
                      fontSize: 14.0,
                      color: context.colors.black
                      ),
                    ),
                    child: const Text('Показать на карте'),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(width: 57,),
          Column(
            children: [
              const SizedBox(height: 33),
              Container(
                width: 508,
                height: 26,
                child: Text(
                  eventModel.title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 24.0,
                    color: context.colors.black
                  ),
                ),
              ),
              const SizedBox(height: 6,),
              Expanded(
                child: Container(
                  width: 508,
                  height: 140,
                  child: Text(
                    eventModel.text,
                    style: GoogleFonts.montserrat(
                      fontSize: 14.0,
                      color: context.colors.black
                      ),
                    maxLines: 9,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              TagWidget(tags: eventModel.tags),
            ],
          ),
          const SizedBox(width: 105,),

          BlocProvider(
          create: (context) => GetIt.I<EventTeamBloc>()..add(EventTeamEvent.loadTeams(eventId: this.eventModel.id)),
          child: JoinTeamList(eventId: this.eventModel.id),
          ),
        ],
      ),
    );
  }
}
