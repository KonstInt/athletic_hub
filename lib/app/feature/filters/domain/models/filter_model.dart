import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_model.freezed.dart';
part 'filter_model.g.dart';

@freezed
class FilterModel with _$FilterModel {
  const factory FilterModel(
      {required String filterId, required String filter}) = _FilterModel;
  factory FilterModel.fromJson(Map<String, dynamic> json) =>
      _$FilterModelFromJson(json);
}
