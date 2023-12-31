import 'package:athletic_hub/app/feature/events/data/api/models/api_event_model.dart';
import 'package:athletic_hub/app/feature/events/domain/models/event_model.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@singleton
class EventMapper {
  EventModel fromApi(ApiEventModel model) {
    return EventModel(
        id: model.id.toString(),
        idCreator: model.idCreator,
        title: model.title,
        imagePath: model.imagePath,
        text: model.text,
        placeUrl: model.placeUrl,
        time: DateTime.now(),//DateFormat("dd-MM-yyyy").parse(model.time),
        tags: model.tags);
  }
  
}
