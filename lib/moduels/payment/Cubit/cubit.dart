import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/models/first_token.dart';
import 'package:payment_app/moduels/payment/Cubit/states.dart';
import 'package:payment_app/shared/component/constants.dart';
import 'package:payment_app/shared/network/dio.dart';

class PaymentCubit extends Cubit<PaymentStates>{
  PaymentCubit():super(PaymentInitState());
  static PaymentCubit get(context) => BlocProvider.of(context);

  Future getFirstToken(String price,String email,String phone,String firstname,String lastname) async{
    DioHelperPayment.postData(
        url: 'auth/tokens',
        data: {
          'api_key': payMobApiKey,
        }
    ).then(
            (value){

             payMobFirstToken = value.data['token'];
             print('fist token = ${payMobFirstToken}');

             getOrderId(price,email, phone, firstname, lastname);
              emit(PaymentSuccessState());
            }
    ).catchError((e){
      print(e.toString());
      emit(PaymentErrorState(e.toString()),

      );
    });
  }


  Future getOrderId(String price,String email,String phone,String firstname,String lastname)async{
    DioHelperPayment.postData(
        url: 'ecommerce/orders',
        data: {
          'auth_token': payMobFirstToken,
          'delivery_needed':'false',
          'amount_cents':price,
          'items':[],
          'currency': 'EGP',

        }
    ).then(
            (value){
          orderId = value.data['id'].toString();
          print('fist token = $orderId');
          getFinalTokenCard(price, email, phone, firstname, lastname);
          getFinalKioskTokenCard(price, email, phone, firstname, lastname);
          emit(PaymentOrderIdSuccessState());

        }
    ).catchError((e){
      emit(PaymentOrderIdErrorState(e.toString()));
    });
  }

  Future getFinalTokenCard(String price,String email,String phone ,String firstname,String lastname)async{
    DioHelperPayment.postData(
        url: 'acceptance/payment_keys',
        data:{
          "auth_token": payMobFirstToken,
          "amount_cents": price,
          "expiration": 3600,
          "order_id": orderId,
          "billing_data": {
              "apartment": "NA",
            "email": email,
            "floor": "NA",
            "first_name": firstname,
            "street": "NA",
            "building": "NA",
            "phone_number": phone,
            "shipping_method": "NA",
            "postal_code": "NA",
            "city": "NA",
            "country": "NA",
            "last_name": lastname,
            "state": "NA"
          },
          "currency": "EGP",
          "integration_id": integrationIdCard,
          "lock_order_when_paid": "false"
        }
    ).then(
            (value){
          finalTokenCard = value.data['token'].toString();
          print(' token = $finalTokenCard');
          emit(PaymentRequestSuccessState());
        }
    ).catchError((e){
      emit(PaymentRequestErrorState(e.toString()));
    });
  }


  Future getFinalKioskTokenCard(String price,String email,String phone ,String firstname,String lastname)async{
    DioHelperPayment.postData(
        url: 'acceptance/payment_keys',
        data:{
          "auth_token": payMobFirstToken,
          "amount_cents": price,
          "expiration": 3600,
          "order_id": orderId,
          "billing_data": {
            "apartment": "NA",
            "email": email,
            "floor": "NA",
            "first_name": firstname,
            "street": "NA",
            "building": "NA",
            "phone_number": phone,
            "shipping_method": "NA",
            "postal_code": "NA",
            "city": "NA",
            "country": "NA",
            "last_name": lastname,
            "state": "NA"
          },
          "currency": "EGP",
          "integration_id": integrationIdKiosk,
          "lock_order_when_paid": "false"
        }
    ).then(
            (value){
          finalTokenKiosk = value.data['token'].toString();
          print(' final kiosk = $finalTokenKiosk');
          getRefrenceCode();
          emit(PaymentRequestKioskSuccessState());
        }
    ).catchError((e){
      print(e.toString());
      emit(PaymentRequestKioskErrorState(e.toString()));
    });
  }


  Future getRefrenceCode()async{
    DioHelperPayment.postData(
        url: 'acceptance/payments/pay',
        data:{


            "source": {
              "identifier": "AGGREGATOR",
              "subtype": "AGGREGATOR"
            },
            "payment_token": finalTokenKiosk

        }
    ).then(
            (value){
          refCode = value.data['id'].toString();
          print(' ref code = $refCode');
          emit(PaymentRefCodeSuccessState());
        }
    ).catchError((e){
      print(e.toString());
      emit(PaymentRefCodeErrorState(e.toString()));
    });
  }

}