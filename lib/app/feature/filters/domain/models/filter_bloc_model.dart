import 'package:athletic_hub/app/feature/filters/domain/models/filter_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_bloc_model.freezed.dart';
part 'filter_bloc_model.g.dart';
@freezed
class FilterBlocModel with _$FilterBlocModel{
  const factory FilterBlocModel({required String id, required String title, required List<FilterModel> filters}) = _FilterModel;
  factory FilterBlocModel.fromJson(Map<String, dynamic> json) => _$FilterBlocModelFromJson(json);
}