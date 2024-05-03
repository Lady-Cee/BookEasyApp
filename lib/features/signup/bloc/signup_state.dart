

import 'package:equatable/equatable.dart';

enum SignupStatus{Initial, Processing, Successful, Error}

class SignupState extends Equatable{
  SignupState({
    required this.fullName,
    required this.emailAddress,
    required this.password,
    required this.confirmPassword,
    this.signupStatus = SignupStatus.Initial,
});

  static SignupState empty = SignupState(
    fullName:"",
    emailAddress: "",
    password: "",
    confirmPassword: "",
    signupStatus: SignupStatus.Initial,
  );

  final String fullName;
  final String emailAddress;
  final String password;
  final String confirmPassword;
  final SignupStatus signupStatus;

  List<Object?> get props => [
    fullName, emailAddress, password, confirmPassword, signupStatus
  ];

  SignupState copyWith({
    String? fullName,
    String? emailAddress,
    String? password,
    String? confirmPassword,
    SignupStatus? signupStatus,
}){
    return SignupState(
        fullName: fullName ?? this.fullName,
        emailAddress: emailAddress ?? this.emailAddress,
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
      signupStatus: signupStatus ?? this.signupStatus
    );
  }

}