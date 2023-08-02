import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'login_screen_state.dart';

class LoginScreenCubit extends Cubit<LoginScreenState> {
  LoginScreenCubit(this.context) : super(LoginScreenInitial()) {
    setValue(false);
  }

  final BuildContext context;

  void setValue(bool value) {
    emit(LoginScreenState(
        valueChange: value)); // Set the boolean value and emit the new state
  }
}
