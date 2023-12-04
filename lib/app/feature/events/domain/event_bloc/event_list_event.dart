part of 'event_list_bloc.dart';

@freezed
class EventListEvent with _$EventListEvent {
  const factory EventListEvent.started() = _Started;
  const factory EventListEvent.loadEvents() = _LoadEvents;
  
}