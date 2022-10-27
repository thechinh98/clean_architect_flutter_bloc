import 'package:base_flutter_bloc/presentation/screens/login/bloc/login_event.dart';
import 'package:base_flutter_bloc/presentation/screens/login/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc() : super(LoginState.initState){
    on<LoginRequested>(_verifyRequested);
  }
  void _verifyRequested(LoginRequested event, Emitter<LoginState> emit){

  }
}