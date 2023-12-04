import 'package:athletic_hub/app/feature/events/data/api/service/api_remote_event_service.dart';
import 'package:athletic_hub/app/feature/events/data/mapper/event_mapper.dart';
import 'package:athletic_hub/app/feature/events/domain/models/event_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class RemoteEventUtil{
  ApiRemoteEventService service;
  EventMapper mapper;
  RemoteEventUtil(this.service, this.mapper);
  Future<List<EventModel>> getEvents() async {
    final apiResult = await service.getEvents();
    final List<EventModel> returnResult = [];
    for(var event in apiResult){
      returnResult.add(mapper.fromApi(event));
    }
    return returnResult;
  }
}