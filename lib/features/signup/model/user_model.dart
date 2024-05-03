import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  final String? id;
  final String? fullName;
  final String? email;
  final String? password;
  final String? confirmPassword;
  final String? role;
  // final String? cardholderName;
  // final String? cardNumber;
  // final String? expiration;
  // final String? cvv;

  UserModel({
    this.id,
    this.fullName,
    this.email,
    this.password,
    this.confirmPassword,
    this.role,
    // this.cardholderName,
    // this.cardNumber,
    // this.expiration,
    // this.cvv,
});

  factory UserModel.fromSnapShot(DocumentSnapshot<Map<String, dynamic>> snapshot){
    return UserModel(
      id: snapshot.id,
      fullName: snapshot['fullName'],
      email: snapshot['email'],
      password: snapshot['password'],
      //confirmPassword: snapshot['confirmPassword'],
      role: snapshot['role'],
      // cardholderName: snapshot['cardholderName'],
      // cardNumber: snapshot['cardNumber'],
      //   expiration: snapshot['expiration'],
      //   cvv: snapshot['cvv'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "fullName": fullName,
      "email": email,
      "password": password,
      //"confirmPassword": confirmPassword,
      "role": role,
      // "cardholderName": cardholderName,
      // "cardNumber": cardNumber,
      // "expiration": expiration,
      // "cvv": cvv,
    };
  }

}