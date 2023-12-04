import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_event_team_model.freezed.dart';
part 'api_event_team_model.g.dart';
@freezed
class ApiEventTeamModel with _$ApiEventTeamModel {
  const factory ApiEventTeamModel({
    required String id,
    required String name,
    required int capacity,
    required List<String> members,
    required String eventId,
  }) = _ApiEventTeamModel;
  factory ApiEventTeamModel.fromJson(Map<String, dynamic> json) => _$ApiEventTeamModelFromJson(json);
}
