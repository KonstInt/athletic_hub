import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_event_model.freezed.dart';
part 'api_event_model.g.dart';

@freezed
class ApiEventModel with _$ApiEventModel {
  const factory ApiEventModel({
    required String id,
    required String title,
    required String imagePath,
    required String text,
    required String placeUrl,
    required String time,
    required List<String> tags,
    required String teamId,
  }) = _ApiEventModel;
  factory ApiEventModel.fromJson(Map<String, dynamic> json) =>
      _$ApiEventModelFromJson(json);
}
