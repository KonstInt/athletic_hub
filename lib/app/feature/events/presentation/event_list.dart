import 'package:athletic_hub/app/feature/events/presentation/event_card.dart';
import 'package:athletic_hub/app/util/themes/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import '../domain/event_bloc/event_list_bloc.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.I<EventListBloc>()..add(const EventListEvent.loadEvents()),
      child: BlocBuilder<EventListBloc, EventListState>(
          builder: (context, state) => state.map(initial: (value) {
                return CircularProgressIndicator(
                  color: context.colors.green,
                );
              }, loading: (value) {
                return CircularProgressIndicator(
                  color: context.colors.green,
                );
              }, loaded: (value) {
                return ListView.separated(
                    padding: EdgeInsets.only(top: 100.h, bottom: 100.h),
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 40.h),
                    shrinkWrap: true,
                    itemCount: value.modelList.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          height: 800.0.h,
                          child: EventCard(eventModel: value.modelList[index]));
                    });
              }, error: (value) {
                return CircularProgressIndicator(
                  color: context.colors.green,
                );
              })),
    );
  }
}
