import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/component/constants.dart';
import '../../shared/styles/colors.dart';

class RefCode extends StatelessWidget {
  const RefCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:   [
            const Text(
              'You Should Go To Any Market To Pay',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20.0,),
            const Text(
              'You Should Go To Any Market To Pay',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Card(
              elevation: 12.0,
              shape: Border.all(color: defColor,width: 1),
              child: Text(
                '$refCode',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
