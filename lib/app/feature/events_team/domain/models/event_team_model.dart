import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_team_model.freezed.dart';

@freezed
class EventTeamModel with _$EventTeamModel {
  const factory EventTeamModel({
    required String id,
    required String name,
    required int capacity,
    required List<String> members,
    required String eventId,
  }) = _EventTeamModel;
}
