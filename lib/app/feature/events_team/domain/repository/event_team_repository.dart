import 'package:athletic_hub/app/feature/events_team/domain/models/event_team_model.dart';

abstract class EventTeamRepository {
  Future<List<EventTeamModel>> getEventTeams({required String idEvent});
}
