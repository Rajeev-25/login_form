import 'package:flutter/material.dart';

void main() {
  runApp(MyLogin());
}

class MyLogin extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white10,
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
                  'Enter mobile number and login',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),

            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                hintText: 'Mobile Number',
                hintStyle: TextStyle(color: Colors.white,fontSize: 22),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'password');
              },
              child: Image.asset('assets/next.jpeg',height: 130,width: 180,),
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
              ),
            ),

            Container(
              height: 100,
              width: 120,
              child: Image.asset('assets/pokerImage.jpeg'),
            ),

          ],
        ),
      ),
      ),
    );
  }
}