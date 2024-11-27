import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_hive/auth_handler/user_auth.dart';
import 'package:habit_hive/screens/user_auth_screen/bloc/user_auth_events.dart';
import 'package:habit_hive/screens/user_auth_screen/bloc/user_auth_state.dart';

class SigninBloc extends Bloc<SigninEvents, SigninState> {
  SigninBloc() : super(InitialState()) {
    on<LogInEvent>((event, emit) {
      // Handle LogIn event
      UserAuth().loginUser(email: event.email, password: event.password);
    });

    on<LogOutEvent>((event, emit) {
      // Handle LogOut event
      UserAuth().logoutUser();
    });

    on<CreateAccountEvent>((event, emit) {
      // Handle Create Account event
      UserAuth().createAccount(email: event.email, password: event.password);
    });
  }
}
