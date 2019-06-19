import 'package:firebase_auth/firebase_auth.dart';

class User{
  final String uid;

  User({this.uid});
}

class FirebaseAuthService{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // metodo privado para crear Usuario a partir de FirebaseUser
  User _userFromFirebase(FirebaseUser user){
    return user == null? null: User(uid: user.uid);
  }

  Stream<User> get onAuthStateChanged{
    return _firebaseAuth.onAuthStateChanged.map(_userFromFirebase);
  }
  Future<User> signInAnonymously () async {
    final user = await _firebaseAuth.signInAnonymously();
    return _userFromFirebase(user);
  }
  Future<void> signOut(){
    return _firebaseAuth.signOut();
  }
}