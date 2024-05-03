import 'package:book_easy/features/login/bloc/login_state.dart';
import 'package:book_easy/features/login/repository/login_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../signup/model/user_model.dart';

class LoginBloc extends Cubit<LoginState>{
  LoginBloc(): super(LoginState.empty);

  LoginRepository loginRepository = LoginRepository();

  void logout() async{
    await FirebaseAuth.instance.signOut();
  }

  void login(String emailAddress, String password) async {
    emit(state.copyWith(loginStatus: LoginStatus.Processing));

    try{
      await loginRepository.loginUser(email: emailAddress, password: password);

      emit(state.copyWith(loginStatus: LoginStatus.Successful));
    } catch(e,s){
      emit(state.copyWith(loginStatus: LoginStatus.Error));
    }
  }
  void reset() async {
    emit(LoginState.empty);
  }
  void resetStatusToInitial() async{
    emit(state.copyWith(loginStatus: LoginStatus.Initial));
  }
  void setEmailAddress(String email){
    var newState = state.copyWith(emailAddress: email);
    emit(newState);
  }
  void setPassword(String password){
    emit(state.copyWith(password: password));
  }
  void onSubmit() async {
    // validate user inputs
    if(_isUserInputValid()){
      // pass to repository for login
      // update state  based on response
      emit(state.copyWith(loginStatus: LoginStatus.Processing));
      try {
        await loginRepository.loginUser(
            email: state.emailAddress, password: state.password);
        emit(state.copyWith(loginStatus: LoginStatus.Successful));
      } catch (e, s){
        if (kDebugMode){
          print(e);
        }
        emit(state.copyWith(loginStatus: LoginStatus.Error));
      }
    }
  }
  bool _isUserInputValid(){
    // Regular expression for basic email validation
    // This regex is simple and may not cover all edge cases
    // You might need a more comprehensive regex depending on your requirements

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(state.emailAddress.isEmpty) {
      emit(state.copyWith(loginStatus: LoginStatus.InvalidEmailAddress));
    } else if (!emailRegex.hasMatch(state.emailAddress)) {
      emit(state.copyWith(loginStatus: LoginStatus.InvalidEmailAddress));
      return false;
    } else if(state.password.isEmpty || state.password.length < 8){
      emit(state.copyWith(loginStatus: LoginStatus.InvalidPassword));
      return false;
    }
    return true;

  }

  // Future<void> _fetchUserData() async {
  //   User? user = FirebaseAuth.instance.currentUser;
  //   if (user != null){
  //     String email = user.emailAddress ??";
  //     UserModel? currentUser = await _auth.readData(email);
  //
  //     if (currentUser = null){
  //       setState(() {
  //         fullName = currentUser.fullName;
  //         role = currentUser.role;
  //       });
  //     }
  //   }
  // }
}



// import 'package:book_easy/features/login/bloc/login_state.dart';
// import 'package:book_easy/features/login/repository/login_repository.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class LoginBloc extends Cubit<LoginState>{
//   LoginBloc(): super(LoginState.empty);
//
//   final LoginRepository loginRepository = LoginRepository();
//
//   void logout() async{
//     await FirebaseAuth.instance.signOut();
//   }
//
//   void login(String emailAddress, String password) async {
//     emit(state.copyWith(loginStatus: LoginStatus.Processing));
//
//     try {
//       User? user = await loginRepository.loginUser(
//           email: emailAddress, password: password);
//       if (user != null) {
//         // Fetch user role from Firestore
//         String? role = await loginRepository.getUserRole(user.uid);
//
//         //Navigate based on user role
//
//   //       if (role != 'null') {
//   //         switch (role) {
//   //           case 'renter' :
//   //             emit(state.copyWith(loginStatus: LoginStatus.SuccessfulRenter));
//   //             break;
//   //           case 'agent/landlord':
//   //             emit(state.copyWith(loginStatus: LoginStatus.SuccessfulAgentLandlord));
//   //             break;
//   //           default:
//   //             emit(state.copyWith(loginStatus: LoginStatus.Successful));
//   //             break;
//   //         }
//   //       } else {
//   //         emit(state.copyWith(loginStatus: LoginStatus.Error));
//   //       }
//   //     } else {
//   //       emit(state.copyWith(loginStatus: LoginStatus.Error));
//   //     }
//      }
//      catch (e, s) {
//        emit(state.copyWith(loginStatus: LoginStatus.Error));
//      }
//    }
//
//
//   //     await loginRepository.loginUser(email: emailAddress, password: password);
//   //     emit(state.copyWith(loginStatus: LoginStatus.Successful));
//   //   } catch(e,s){
//   //     emit(state.copyWith(loginStatus: LoginStatus.Error));
//   //   }
//   // }
//   void reset() async {
//     emit(LoginState.empty);
//   }
//   void resetStatusToInitial() async{
//     emit(state.copyWith(loginStatus: LoginStatus.Initial));
//   }
//   void setEmailAddress (String email){
//     emit(state.copyWith(emailAddress: email));
//     // var newState = state.copyWith(emailAddress: email);
//     // emit(newState);
//
//   }
//   void setPassword(String password){
//     emit(state.copyWith(password: password));
//   }
//   void onSubmit() async {
//     // validate user inputs
//     if(_isUserInputValid()){
//       // pass to repository for login
//       // update state  based on response
//       emit(state.copyWith(loginStatus: LoginStatus.Processing));
//       try {
//         await loginRepository.loginUser(
//             email: state.emailAddress, password: state.password);
//         emit(state.copyWith(loginStatus: LoginStatus.Successful));
//       } catch (e, s){
//         if (kDebugMode){
//           print(e);
//         }
//         emit(state.copyWith(loginStatus: LoginStatus.Error));
//       }
//     }
//   }
//   bool _isUserInputValid(){
//     if(state.emailAddress.isEmpty){
//       emit(state.copyWith(loginStatus: LoginStatus.InvalidEmailAddress));
//       return false;
//     }else if(state.password.isEmpty || state.password.length < 8){
//       emit(state.copyWith(loginStatus: LoginStatus.InvalidPassword));
//       return false;
//     }
//     return true;
//
//   }
// }


