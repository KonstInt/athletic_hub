import 'package:athletic_hub/app/feature/events_team/data/util/event_team_util.dart';
import 'package:athletic_hub/app/feature/events_team/domain/models/event_team_model.dart';
import 'package:athletic_hub/app/feature/events_team/domain/repository/event_team_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: EventTeamRepository)
class RemoteEventTeamRepository extends EventTeamRepository {
  EventTeamUtil util;
  RemoteEventTeamRepository(this.util);

  @override
  Future<List<EventTeamModel>> getEventTeams({required String idEvent}) {
    return util.getEventTeams(idEvent: idEvent);
  }
}
