import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Uncomment the import if UserModel is defined elsewhere
 //import '../../account/models/user.dart';
import '../../signup/model/user_model.dart';

class RenterRepository{
  var auth = FirebaseAuth.instance;

  Future<void> verifyUserWithPhoneNumber({required String phoneNumber}) async{
    // Send verification code to the provided phone number
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        // This callback will be invoked in some cases when automatic verification is triggered
        // For example, if the user's phone number is instantly verified without requiring code input
        // In such cases, you can sign in the user immediately
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        // Handle verification failure
        print('Phone verification failed: ${e.message}');
      },
      codeSent: (String verificationId, int? resendToken) {
        // Handle code sent to the user's phone
        // You can store the verification ID to use later when verifying the code
        print('Verification code sent to the provided phone number');
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // Handle timeout of code auto-retrieval
        print('Code auto-retrieval timed out');
      },
    );
  }

  // You can still save user details to Firestore using this method
  // Future<void> saveUser({required UserModel user}) async{
  //   FirebaseFirestore.instance
  //       .collection("users")
  //       .doc(user.phoneNumber)
  //       .set(user.toJson());
  // }
}
