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
      eventId: "1",
    ),
    const ApiEventTeamModel(
      id: "team2",
      name: "Team Two",
      capacity: 4,
      members: ["Alice", "Charlie", "Dave"],
      eventId: "1",
    ),
    const ApiEventTeamModel(
      id: "team3",
      name: "Team Three",
      capacity: 3,
      members: ["Eve", "Frank"],
      eventId: "1",
    ),
  ];
  DioRemoteService dioRemoteService;
  ApiRemoteEventTeamService(this.dioRemoteService);


  Future<List<ApiEventTeamModel>> getEventTeams(
      {required String idEvent})  async {
    try {
      final List<ApiEventTeamModel> returnValue = [];
      final result = await dioRemoteService.dio.get('https://athletichub.onrender.com/team/1');
      if(result.statusCode == 200) {
      for (var x in result.data) {
        returnValue.add(ApiEventTeamModel.fromJson(x));
      }
      }
      else{
        returnValue.addAll(teams);
      }
      return returnValue;
    } catch (e) {
      rethrow;
    }
  }
}
