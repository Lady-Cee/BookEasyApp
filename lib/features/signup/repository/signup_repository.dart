import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../model/user_model.dart';

class SignupRepository {
  final CollectionReference _usersCollection =
  FirebaseFirestore.instance.collection('users');
  var auth = FirebaseAuth.instance;

  Future<void> registerUser({
    required String fullName,
    required String email,
    required String password,
    required String role,
  })
  async {
    try {
      await _usersCollection.add({
        'fullName': fullName,
        'email': email,
        'password': password,
        'role': role,
      });
    } catch (e) {
      // Handle error
      print('Error registering user: $e');
      throw Exception('Failed to register user');
    }

    // create user in firebase auth

    await auth.createUserWithEmailAndPassword(email : email, password: password);
  }
    //read data
  Future<UserModel?> readData(String email) async {
    final userCollection = FirebaseFirestore.instance.collection("users");
    QuerySnapshot querySnapshot = await userCollection.where('email', isEqualTo: email).get();
    if (querySnapshot.docs.isNotEmpty) {
      UserModel userModel = UserModel.fromSnapShot(querySnapshot.docs.first as DocumentSnapshot<Map<String, dynamic>>);
      return userModel;
    }
    return null;
  }
}


// class SignupRepository {
//   var auth = FirebaseAuth.instance;
//
//   Future<void> registerUser({required String email, required String password}) async {
//
//     // create user in firebase auth
//
//     await auth.createUserWithEmailAndPassword(email : email, password: password);
//   }
// }