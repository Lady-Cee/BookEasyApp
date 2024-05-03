import 'package:equatable/equatable.dart';

class PaymentState extends Equatable {
  PaymentState({
    this.switchBtn = true,
    required this.cardholderName,
    required this.cardNumber,
    required this.expiration,
    required this.cvv,
});
  final bool switchBtn;
  final String cardholderName;
  final String cardNumber;
  final String expiration;
  final String cvv;

  PaymentState copyWith({
    bool? switchBtn,
    String? cardholderName,
    String? cardNumber,
    String? expiration,
    String? cvv,
}) {
    return PaymentState(
    switchBtn: switchBtn?? this.switchBtn,
      cardholderName:  cardholderName ?? this. cardholderName,
      cardNumber: cardNumber ?? this.cardNumber,
      expiration: expiration ?? this.expiration,
      cvv: cvv ?? this.cvv,
    );
  }
  List<Object?> get props => [
    switchBtn, cardholderName, cardNumber, expiration, cvv,
  ];
}