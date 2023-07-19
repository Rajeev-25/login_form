import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

void main() {
  runApp(MyPassword());
}

class MyPassword extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white12,
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 200,
                child: Image.asset('assets/backgroundImage.jpeg'),
              ),

              Container(
                padding: EdgeInsets.only( top: 100,),
                child: Text(
                  'Please enter the OTP',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),

              OtpTextField(
                numberOfFields: 4,
                keyboardType: TextInputType.number,
                showFieldAsBox: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter 4-digit OTP',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'homePage');
                },
                child: Image.asset('assets/next.jpeg',height: 130,width: 180,),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                ),
              ),

              SizedBox(width: 20),
              TextButton(
                onPressed: () {
                  // Resend OTP code
                },
                child: Text(
                  'Resend OTP',
                  style: TextStyle(color: Colors.white,fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
