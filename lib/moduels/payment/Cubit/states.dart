abstract class PaymentStates{}
class PaymentInitState extends PaymentStates{}
class PaymentSuccessState extends PaymentStates{}
class PaymentErrorState extends PaymentStates{
  String error;
  PaymentErrorState(this.error);
}
class PaymentOrderIdSuccessState extends PaymentStates{}
class PaymentOrderIdErrorState extends PaymentStates{
  String error;
  PaymentOrderIdErrorState(this.error);
}

class PaymentRequestSuccessState extends PaymentStates{}
class PaymentRequestErrorState extends PaymentStates{
  String error;
  PaymentRequestErrorState(this.error);
}

class PaymentRequestKioskSuccessState extends PaymentStates{}
class PaymentRequestKioskErrorState extends PaymentStates{
  String error;
  PaymentRequestKioskErrorState(this.error);
}


class PaymentRefCodeSuccessState extends PaymentStates{}
class PaymentRefCodeErrorState extends PaymentStates{
  String error;
  PaymentRefCodeErrorState(this.error);
}

