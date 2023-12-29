part of 'photobloc.dart';


@immutable
sealed class PhotoState{}

final class PhotoInitial extends PhotoState {}

final class PhotoRead extends PhotoState {}

final class PhotoSuccess extends PhotoState {
  final Uint8List photo;
  PhotoSuccess({required this.photo});
}


