part of 'event_team_bloc.dart';

@freezed
class EventTeamState with _$EventTeamState {
  const factory EventTeamState.initial() = _Initial;
  const factory EventTeamState.loading() = _Loading;
  const factory EventTeamState.loaded(List<EventTeamModel> teamList) = _Loaded;
  const factory EventTeamState.error([String? message]) = _Error;
}
