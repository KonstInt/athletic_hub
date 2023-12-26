part of 'photobloc.dart';

@immutable
sealed class PhotoEvent {}

class SetPhoto extends PhotoEvent{
  final Uint8List photo;
  SetPhoto(this.photo);
}

class NoSetPhoto extends PhotoEvent{}


