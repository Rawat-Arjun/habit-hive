import 'package:equatable/equatable.dart';

/// Base state class
abstract class SigninState extends Equatable {
  const SigninState();

  @override
  List<Object?> get props => [];
}

// Initial state
class InitialState extends SigninState {}

// Loading state
class LoadingState extends SigninState {}

// Logged-in state
class LoggedInState extends SigninState {
  final bool isLoggedIn;
  final String username;
  final String email;

  const LoggedInState({
    required this.isLoggedIn,
    required this.username,
    required this.email,
  });

  @override
  List<Object?> get props => [isLoggedIn];
}

// Handle error state
class ErrorState extends SigninState {
  final String errorMessage;

  const ErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
