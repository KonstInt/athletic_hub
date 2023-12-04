part of 'event_list_bloc.dart';

@freezed
class EventListState with _$EventListState {
  const factory EventListState.initial() = _Initial;
  const factory EventListState.loading() = _Loading;
  const factory EventListState.loaded({required List<EventModel> modelList}) = _Loaded;
  const factory EventListState.error([String? message]) = _Error;
}
