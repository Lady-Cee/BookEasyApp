import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRepository{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<User?> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return _auth.currentUser;
    } catch (e) {
      print('Error logging in: $e');
      return null;
    }
  }
   Future<String?> getUserRole(String userId) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> userDoc =
          await _firestore.collection('users').doc(userId).get();
      if (userDoc.exists){
        return userDoc.get('role');
      } else {
        return null;
      }
    } catch (e) {
      print('Error getting user role: $e');
      return null;
    }
   }
}

// import 'package:firebase_auth/firebase_auth.dart';
//
// class LoginRepository{
//   var auth = FirebaseAuth.instance;
//
//   Future<void> loginUser({
//     required String email,
//     required String password,
// }) async {
//     await auth.signInWithEmailAndPassword(email: email, password: password);
//   }
// }