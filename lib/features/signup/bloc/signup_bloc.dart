import 'package:book_easy/features/signup/bloc/signup_state.dart';
import 'package:book_easy/features/signup/repository/signup_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBloc extends Cubit<SignupState>{
  SignupBloc(): super(SignupState.empty);

  SignupRepository signupRepository = SignupRepository();

  void reset(){
    emit(SignupState.empty);
  }
  void registerUser({
    required String fullName,
    required String emailAddress,
    required String password,
    required String confirmPassword,
    required String role,
}) async{
    //show processing state
    emit(state.copyWith(signupStatus: SignupStatus.Processing));

    try{
      //attempt to register the user

      await signupRepository.registerUser(
        fullName: fullName,
        email: emailAddress,
        password: password,
        role: role,
        //confirmPassword: confirmPassword,
      );

      // If successful, update state to Successful
      emit(state.copyWith(signupStatus: SignupStatus.Successful));

    } catch (e) {
     // print("Got to error section");
      emit(state.copyWith(signupStatus: SignupStatus.Error));
     // print(e);
    }
    }
  }

