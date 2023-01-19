import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/moduels/payment/refcode.dart';
import 'package:payment_app/moduels/register/register_screen.dart';
import 'package:payment_app/shared/component/components.dart';
import 'package:payment_app/shared/styles/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../shared/component/constants.dart';

class VisaCard extends StatelessWidget {
  VisaCard({Key? key}) : super(key: key);
   WebViewController controller = WebViewController();


  @override
  Widget build(BuildContext context) {
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            debugPrint('WebView is loading (progress : $progress%)');
          },
          onPageStarted: (String url) {
            debugPrint('Page started loading: $url');
          },
          onPageFinished: (String url) {
            debugPrint('Page finished loading: $url');
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint('''
Page resource error:
  code: ${error.errorCode}
  description: ${error.description}
  errorType: ${error.errorType}
  isForMainFrame: ${error.isForMainFrame}
          ''');
          },

        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        },
      )
      ..loadRequest(Uri.parse('https://accept.paymob.com/api/acceptance/iframes/720289?payment_token=$finalTokenCard'));



    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: (){
              Exit(context);
              },
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Icon(Icons.exit_to_app),
            ),
          ),
        ],
      ),
      body: WebViewWidget(
        controller:controller,

      )
    );
  }
  Exit(BuildContext context){
    showDialog(
        context: context,
        builder: (_){
          return  AlertDialog(
            title:  Text(
              'Are You Sure Completed Payment',
              style:  TextStyle(
                color: defColor,
                fontSize: 14,
              ),
            ),
            actions: [
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                    navigateAndFinish(context, RegisterScreen());
                  },
                  child: Text(
                    'Yes'
                  )),
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);

                  },
                  child: Text(
                      'No'
                  )),
            ],
          );
        }
    );

  }
}
