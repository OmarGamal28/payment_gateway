import 'package:flutter/material.dart';

Widget defaultButton({
double width = double.infinity,
Color background = Colors.blue,
bool isUpperCase =true,
double radius =0.0,
required Function() function,
required String text,
})=>Container(
  width: width,
  height: 40.0,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),color: background
  ),
  child: MaterialButton(
    onPressed: function,
    child: Text(
      isUpperCase ? text.toUpperCase() :text,
      style: const TextStyle(color: Colors.white),
    ),
  ),

);

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  ValueChanged<String>? onSubmit,
  ValueChanged<String>? onChange,
  GestureTapCallback? onTap,
  bool isPassword =false,
  required FormFieldValidator<String> validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  VoidCallback? suffixPressed,
  bool isClickable= true,
  int? lines,
})=> TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  enabled: isClickable,
  onFieldSubmitted: onSubmit,
  onChanged: onChange,
  onTap: onTap,
  validator: validate,
  maxLines: lines,
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon (
      prefix
    ),
    suffixIcon: suffix !=null ?IconButton(
        onPressed: suffixPressed,
        icon: Icon(
          suffix
        ),
    ) : null,
  ),
);


void navigateTo(context,widget)=> Navigator.push(
    context,
    MaterialPageRoute(builder: (context)=> widget),
);

void navigateAndFinish(context,widget)=> Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context)=> widget),
    (Route<dynamic>route)=>false
);