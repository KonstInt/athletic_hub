import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../models/authorization_model.dart';
part 'authorization_event.dart';
part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc() : super(AuthorizationInitial()) {
    on<RegEvent>((event,emit){
      emit(AuthorizationReg());
    });

    on<EnterEvent>((event,emit){
      emit(AuthorizationEnter());
    });

    on<AuthEvent>((event,emit){
      emit(AuthorizationSuccess(auth: event.auth));
    });
  }
}
