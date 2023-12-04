import 'package:athletic_hub/app/common/service/remote/dio/dio_remote_service.dart';
import 'package:athletic_hub/app/feature/events/data/api/models/api_event_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiRemoteEventService{
  DioRemoteService dioRemoteService;
  ApiRemoteEventService(this.dioRemoteService);

  Future<List<ApiEventModel>> getEvents(){
    throw UnimplementedError();
  }
}