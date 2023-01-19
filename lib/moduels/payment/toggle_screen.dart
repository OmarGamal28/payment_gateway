import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/moduels/payment/refcode.dart';
import 'package:payment_app/moduels/payment/visacard_screen.dart';
import 'package:payment_app/shared/styles/colors.dart';

class ToggleScreen extends StatelessWidget {
  const ToggleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: (() {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return VisaCard() ;
                      }));
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: defColor),


                    ),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/Visadebitcardpng-1599584312349.png',height: 200,),
                        const SizedBox(height: 20,),
                        const Text(
                          'Payment With Card',
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Expanded(
                child: InkWell(
                  onTap: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return RefCode() ;
                    }));
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: defColor),
                    ),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/سعر-ماكينة-فوري-768x768.jpg' ,height: 250.0,),
                        SizedBox(height: 20,),
                        const Text(
                          'Payment With Reference Code',
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
