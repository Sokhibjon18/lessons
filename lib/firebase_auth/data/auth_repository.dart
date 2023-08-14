import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User? user = _firebaseAuth.currentUser;
      if (user != null) {
        return null;
      } else {
        return 'User is not registered';
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'Provided password is too weak';
      } else if (e.code == 'email-already-in-use') {
        return 'Account is already exists for that email';
      }
      return e.message ?? 'Wrong';
    } catch (e) {
      return 'something went wrong';
    }
  }

  Future<String?> signInUser(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      final User? user = _firebaseAuth.currentUser;
      if (user != null) {
        return null;
      } else {
        return 'user is not signed in';
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'Provided password is too weak';
      } else if (e.code == 'email-already-in-use') {
        return 'Account is already exists for that email';
      }
      return e.message ?? 'Wrong';
    } catch (e) {
      return 'something went wrong';
    }
  }
}
