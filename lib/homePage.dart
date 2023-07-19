import 'package:flutter/material.dart';

void main() {
  runApp(MyHome());
}
class MyHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                // height: 200,
                child: Image.asset('assets/homePg.jpeg',),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.yellow),
              label: 'Setting',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Colors.yellow),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.yellow),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.poll, color: Colors.yellow),
              label: 'PrizePoll',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu, color: Colors.yellow),
              label: 'Menu',
            ),
          ],
        ),
      ),
    );
  }
}