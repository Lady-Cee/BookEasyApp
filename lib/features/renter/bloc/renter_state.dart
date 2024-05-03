

import 'package:equatable/equatable.dart';

enum RenterStatus{Initial, Processing, Successful, Error}

class RenterState extends Equatable{
  RenterState({
    required this.firstName,
    required this.surname,
    required this.emailAddress,
    required this.phoneNumber,
    this.renterStatus = RenterStatus.Initial,
  });

  static RenterState empty = RenterState(
    firstName:"",
    surname: "",
    emailAddress: "",
    phoneNumber: "",
    renterStatus: RenterStatus.Initial,
  );

  final String firstName;
  final String surname;
  final String emailAddress;
  final String phoneNumber;
  final RenterStatus renterStatus;

  List<Object?> get props => [
    firstName, surname, emailAddress, phoneNumber, renterStatus
  ];

  RenterState copyWith({
    String? firstName,
    String? surname,
    String? emailAddress,
    String? phoneNumber,
    RenterStatus? renterStatus,
  }){
    return RenterState(
        firstName: firstName ?? this.firstName,
        surname: surname ?? this.surname,
        emailAddress: emailAddress ?? this.emailAddress,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        renterStatus: renterStatus ?? this.renterStatus
    );
  }

}