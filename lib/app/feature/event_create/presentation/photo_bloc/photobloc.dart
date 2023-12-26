import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'event.dart';
part 'state.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  PhotoBloc() : super(PhotoInitial()) {

    on<SetPhoto>((event,emit){
      emit(PhotoSuccess(photo: event.photo));
    });

    on<NoSetPhoto>((event,emit){
      emit(PhotoRead());
    });
  }
}

