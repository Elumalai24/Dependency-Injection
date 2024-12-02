

import 'package:bloc_with_di/bloc/auth_event.dart';
import 'package:bloc_with_di/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../auth_service.dart';

@injectable

class AuthBloc extends Bloc<AuthEvent, AuthState>{
  final AuthService _authService;
  AuthBloc(this._authService) : super(AuthInitial()) {
    on<LoginEvent>((event, emit)async{
      emit(AuthLoading());
      try{
        await _authService.login(event.userName, event.password);
        emit(AuthSuccess());
      }
      catch(e){
        emit(AuthFailure(e.toString()));
      }
    });
  }
}






















































