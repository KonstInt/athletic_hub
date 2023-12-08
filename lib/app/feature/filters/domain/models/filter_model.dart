import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_model.freezed.dart';

@freezed
class FilterModel with _$FilterModel{
  const factory FilterModel({required String filterId, required String filters}) = _FilterModel;

}