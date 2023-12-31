import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_model.freezed.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required String id,
    required String idCreator,
    required String title,
    required String imagePath,
    required String text,
    required String placeUrl,
    required DateTime time,
    required List<String> tags,
  }) = _EventModel;
}
