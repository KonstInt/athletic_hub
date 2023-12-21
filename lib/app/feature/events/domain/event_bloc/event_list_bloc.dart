import 'dart:async';

import 'package:athletic_hub/app/feature/events/domain/models/event_model.dart';
import 'package:athletic_hub/app/feature/events/domain/repository/event_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'event_list_event.dart';
part 'event_list_state.dart';
part 'event_list_bloc.freezed.dart';

@injectable
class EventListBloc extends Bloc<EventListEvent, EventListState> {
  EventRepository repository;
  EventListBloc(this.repository) : super(const _Initial()) {
    on<EventListEvent>((event, emit) {
      event.map(
          started: (event) => start(event, emit),
          loadEvents: (event) => load(event, emit));
    });
  }

  FutureOr<void> start(EventListEvent event, Emitter<EventListState> emit) {}
  FutureOr<void> load(
      EventListEvent event, Emitter<EventListState> emit) async {
    emit(const EventListState.loading());
    try {
      final result = await repository.getEvents();
      emit(EventListState.loaded(modelList: result));
    } catch (e) {
      emit(EventListState.error(e.toString()));
    }
  }
}
