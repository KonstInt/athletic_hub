import 'package:athletic_hub/app/feature/events/data/util/remote_event_util.dart';
import 'package:athletic_hub/app/feature/events/domain/models/event_model.dart';
import 'package:athletic_hub/app/feature/events/domain/repository/event_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: EventRepository)
class RemoteEventRepository extends EventRepository{
  final RemoteEventUtil util;
  RemoteEventRepository(this.util);

  @override
  Future<List<EventModel>> getEvents() {
    return util.getEvents();
  }

}