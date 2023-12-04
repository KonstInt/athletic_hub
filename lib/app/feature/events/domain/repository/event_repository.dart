import 'package:athletic_hub/app/feature/events/domain/models/event_model.dart';

abstract class EventRepository{
  Future<List<EventModel>> getEvents();
}