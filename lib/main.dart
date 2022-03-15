import 'package:flutter/material.dart';
import '/otp.dart';
import 'package:sms_autofill/sms_autofill.dart';

void main() => runApp(MyApp ());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Sms Autofill',
      home: Auth(),
    ); // MateriaLApp
  }
}

class Auth extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child:
        ElevatedButton(
          child: Text('Login / Register'),
          onPressed: () async {
              // HTTP here
              final signcode = await SmsAutoFill().getAppSignature;
              print(signcode);
              Navigator.push(context, MaterialPageRoute(builder: (c) => Otp()));
            },
        ),
      ),
    );
  } // Center
}