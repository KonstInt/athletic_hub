import 'package:athletic_hub/app/feature/events/data/api/models/api_event_model.dart';
import 'package:athletic_hub/app/feature/events/domain/models/event_model.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@singleton
class EventMapper {
  EventModel fromApi(ApiEventModel model) {
    return EventModel(
        id: model.id,
        title: model.title,
        imagePath: model.imagePath,
        text: model.text,
        placeUrl: model.placeUrl,
        time: DateFormat("dd-MM-yyyy hh:mm:ss").parse(model.time),
        tags: model.tags);
  }
}
