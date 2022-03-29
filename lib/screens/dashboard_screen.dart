import 'package:flutter/material.dart';
import 'package:jidetaiwoapp/widgets/appbar_widget.dart';
import 'package:jidetaiwoapp/widgets/bottom_navigation_bar_widget.dart';

import '../hextocolor.dart';
class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            child: AppBarWidget('Facility Management'),
            preferredSize: Size.fromHeight(kToolbarHeight)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 15),
      child: ListView(
        children: [
          Container(
            height: 150,
            alignment: Alignment.center,
            child: Image.asset('assets/images/Balance_open.png'),
          ),
          Container(
            height: 570,
            width: double.infinity,
            child: Image.asset('assets/images/Table_balance.png'),)
        ],
      ),
      ),
      backgroundColor: hextocolor('#E5E5E5'),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
