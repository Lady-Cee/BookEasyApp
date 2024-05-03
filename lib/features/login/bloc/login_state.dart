import 'package:equatable/equatable.dart';

enum LoginStatus{Initial, Processing, Successful, Error, InvalidEmailAddress, InvalidPassword}

class LoginState extends Equatable{
  const LoginState({  required this.emailAddress,   required this.password,this.loginStatus = LoginStatus.Initial,
    required this.userId,
});
  static LoginState empty = LoginState(
    emailAddress: "",
    password: "",
    //loginStatus: LoginStatus.Initial,
    userId: ""
  );

  final String emailAddress;
  final String password;
  final LoginStatus loginStatus;
  final String userId;


  @override
  // TODO: implement props
  List<Object?> get props => [
    emailAddress, password, loginStatus, userId,
  ];

  LoginState copyWith({
    String? emailAddress,
    String? password,
    LoginStatus? loginStatus,
    String? userId,
}){
    return LoginState(
        emailAddress: emailAddress ?? this.emailAddress,
        password: password ?? this.password,
      loginStatus: loginStatus ?? this.loginStatus,
        userId: userId ?? this.userId
    );
  }

}