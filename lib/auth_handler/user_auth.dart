import 'package:firebase_auth/firebase_auth.dart';

class UserAuth {
  void loginUser({required String email, required String password}) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }

  void logoutUser() async {
    await FirebaseAuth.instance.signOut();
  }

  void createAccount({required String email, required String password}) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  void resetPassword({required String email}) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
