import 'package:athletic_hub/app/common/service/remote/dio/dio_remote_service.dart';
import 'package:athletic_hub/app/feature/events_team/data/api/models/api_event_team_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiRemoteEventTeamService {
  final List<ApiEventTeamModel> teams = [
    const ApiEventTeamModel(
      id: "team1",
      name: "Team One",
      capacity: 5,
      members: ["John", "Jane", "Bob"],
      eventId: "event1",
    ),
    const ApiEventTeamModel(
      id: "team2",
      name: "Team Two",
      capacity: 4,
      members: ["Alice", "Charlie", "Dave"],
      eventId: "event1",
    ),
    const ApiEventTeamModel(
      id: "team3",
      name: "Team Three",
      capacity: 3,
      members: ["Eve", "Frank"],
      eventId: "event2",
    ),
  ];
  DioRemoteService dioRemoteService;
  ApiRemoteEventTeamService(this.dioRemoteService);

  Future<List<ApiEventTeamModel>> getEventTeams(
      {required String idEvent}) async {
    return teams;
  }
}
