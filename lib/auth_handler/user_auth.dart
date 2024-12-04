import 'package:firebase_auth/firebase_auth.dart';

class UserAuth {
  // Singleton pattern
  UserAuth._internal();
  static final UserAuth _instance = UserAuth._internal();
  factory UserAuth() => _instance;

  // Check if the user is logged in
  bool isUserLoggedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }

  // Login user
  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      // Handle specific errors like invalid email or wrong password
      throw Exception('Login failed: ${e.message}');
    } catch (e) {
      throw Exception('An unexpected error occurred during login: $e');
    }
  }

  // Logout user
  Future<void> logoutUser() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      throw Exception('Logout failed: $e');
    }
  }

  // Create a new account
  Future<void> createAccount({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw Exception('Account creation failed: ${e.message}');
    } catch (e) {
      throw Exception(
          'An unexpected error occurred during account creation: $e');
    }
  }

  // Reset password
  Future<void> resetPassword({required String email}) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw Exception('Password reset failed: ${e.message}');
    } catch (e) {
      throw Exception('An unexpected error occurred during password reset: $e');
    }
  }
}
