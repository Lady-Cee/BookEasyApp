import 'package:book_easy/features/payment/bloc/payment_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentBloc extends Cubit<PaymentState> {
  PaymentBloc(): super(PaymentState(
    cardholderName: '',
    cardNumber: '',
    expiration: '',
    cvv: '',
  ));

  void switchBtnOn() async{
    emit(state.copyWith(switchBtn: true));

  }
  void switchBtnOff() async{
    emit(state.copyWith(switchBtn: false));
  }

}