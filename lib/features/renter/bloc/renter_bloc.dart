import 'package:book_easy/features/renter/bloc/renter_state.dart';
import 'package:book_easy/features/signup/bloc/signup_state.dart';
import 'package:book_easy/features/signup/repository/signup_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repository/renter_repository.dart';

class RenterBloc extends Cubit<RenterState>{
  RenterBloc(): super(RenterState.empty);

  RenterRepository renterRepository = RenterRepository();

  void reset(){
    emit(RenterState.empty);
  }
  void verifyUser({
    //required String firstName,
    // required String surname,
    // required String emailAddress,
     required String phoneNumber,
  }) async{
    //show processing state
    emit(state.copyWith(renterStatus: RenterStatus.Processing));

    try{
      //attempt to register the user

      await renterRepository.verifyUserWithPhoneNumber(
        //firstName: firstName,
       // surname: surname,
       // email: emailAddress,
       phoneNumber: phoneNumber,
        //confirmPassword: confirmPassword,
      );

      // If successful, update state to Successful
      emit(state.copyWith(renterStatus: RenterStatus.Successful));

    } catch (e) {
      // print("Got to error section");
      print(e);
      emit(state.copyWith(renterStatus: RenterStatus.Error));

    }
  }
}

