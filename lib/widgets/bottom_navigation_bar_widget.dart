import 'package:flutter/material.dart';

import '../hextocolor.dart';
class BottomNavigationWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_rounded),label: 'Wallet'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(Icons.account_box),label: 'Profile'),
      ],
      type: BottomNavigationBarType.fixed, // Fixed
      elevation: 0,
      backgroundColor: hextocolor('#FDEFED'),
    );
  }
}
