part of 'event_team_bloc.dart';

@freezed
class EventTeamEvent with _$EventTeamEvent {
  const factory EventTeamEvent.started() = _Started;
  const factory EventTeamEvent.loadTeams({required String eventId}) = _LoadTeams;
}