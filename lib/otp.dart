import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  void initState() {
    super.initState();
    _listenOtp();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ Text('OTP'),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: PinFieldAutoFill(
                codeLength: 4,
                onCodeChanged: (val) {
                  print(val);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _listenOtp() async{
    await SmsAutoFill().listenForCode();
  }
}// PinFieldAutoFill ) // Container 1, // <Widget>[] ), // Column ), 1/ Center