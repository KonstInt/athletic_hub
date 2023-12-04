import 'package:athletic_hub/app/feature/events_team/data/api/service/api_remote_event_team_service.dart';
import 'package:athletic_hub/app/feature/events_team/data/mapper/event_team_mapper.dart';
import 'package:athletic_hub/app/feature/events_team/domain/models/event_team_model.dart';
import 'package:injectable/injectable.dart';
@singleton
class EventTeamUtil {
  ApiRemoteEventTeamService service;
  EventTeamMapper mapper;
  EventTeamUtil(this.service, this.mapper);

  Future<List<EventTeamModel>> getEventTeams({required String idEvent}) async {
    final serviceResult = await service.getEventTeams(idEvent: idEvent);
    final List<EventTeamModel> result = [];
    for (var team in serviceResult) {
      result.add(mapper.fromApi(team));
    }
    return result;
  }
}
