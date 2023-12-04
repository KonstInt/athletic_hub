import 'package:athletic_hub/app/common/service/remote/dio/dio_remote_service.dart';
import 'package:athletic_hub/app/feature/events_team/data/api/models/api_event_team_model.dart';
import 'package:injectable/injectable.dart';
@singleton
class ApiRemoteEventTeamService{
  DioRemoteService dioRemoteService;
  ApiRemoteEventTeamService(this.dioRemoteService);

  Future<List<ApiEventTeamModel>> getEventTeams({required String idEvent}){
    throw UnimplementedError();
  }
}