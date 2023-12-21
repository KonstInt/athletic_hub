import 'package:athletic_hub/app/feature/events_team/data/api/models/api_event_team_model.dart';
import 'package:athletic_hub/app/feature/events_team/domain/models/event_team_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class EventTeamMapper {
  EventTeamModel fromApi(ApiEventTeamModel model) {
    return EventTeamModel(
        id: model.id,
        name: model.name,
        capacity: model.capacity,
        members: model.members,
        eventId: model.eventId);
  }
}
