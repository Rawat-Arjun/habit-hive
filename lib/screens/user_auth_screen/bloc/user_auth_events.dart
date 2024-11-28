import 'package:equatable/equatable.dart';

// Base event class
abstract class SigninEvents extends Equatable {
  const SigninEvents();

  @override
  List<Object?> get props => [];
}

// login event with user credentials
class LogInEvent extends SigninEvents {
  final String email;
  final String password;

  const LogInEvent({required this.email, required this.password});
}

// logout event
class LogOutEvent extends SigninEvents {}

// create account event
class CreateAccountEvent extends SigninEvents {
  final String email;
  final String password;

  const CreateAccountEvent({required this.email, required this.password});
}
