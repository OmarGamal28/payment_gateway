import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/moduels/payment/Cubit/cubit.dart';
import 'package:payment_app/moduels/payment/Cubit/states.dart';
import 'package:payment_app/moduels/payment/toggle_screen.dart';
import 'package:payment_app/shared/component/components.dart';
import 'package:payment_app/shared/styles/colors.dart';

class RegisterScreen extends StatelessWidget {
  var firstNameController = TextEditingController();
  var emailController = TextEditingController();
  var lastNameController = TextEditingController();
  var priceController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: BlocConsumer<PaymentCubit, PaymentStates>(
        listener: (context, state) {
          if(state is PaymentRefCodeSuccessState){
            navigateAndFinish(context, ToggleScreen());
          }
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              title: const Center(
                child: Text('Payment Integration'),
              ),
              backgroundColor: defColor,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defaultFormField(
                          controller: firstNameController,
                          type: TextInputType.name,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your name';
                            }
                          },
                          label: 'First Name',
                          prefix: Icons.person,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        defaultFormField(
                          controller: lastNameController,
                          type: TextInputType.name,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your last name';
                            }
                          },
                          label: 'Last Name',
                          prefix: Icons.person,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        defaultFormField(
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your email';
                            }
                          },
                          label: 'Email',
                          prefix: Icons.email,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        defaultFormField(
                          controller: phoneController,
                          type: TextInputType.phone,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'please enter Phone';
                            }
                          },
                          label: 'Phone',
                          prefix: Icons.phone,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        defaultFormField(
                          controller: priceController,
                          type: TextInputType.number,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'please enter Price';
                            }
                          },
                          label: 'Price',
                          prefix: Icons.price_change_sharp,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        defaultButton(
                            function: () async {
                              if (formKey.currentState!.validate()) {
                                PaymentCubit.get(context).getFirstToken(
                                    priceController.text,
                                    emailController.text,
                                    phoneController.text,
                                    firstNameController.text,
                                    lastNameController.text);
                              }
                            },
                            text: 'Go To Pay'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
