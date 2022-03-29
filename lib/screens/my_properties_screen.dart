import 'package:flutter/material.dart';
import 'package:jidetaiwoapp/hextocolor.dart';
import 'package:jidetaiwoapp/widgets/appbar_widget.dart';
import 'package:jidetaiwoapp/widgets/bottom_navigation_bar_widget.dart';
class PropertiesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          child: AppBarWidget('Facility Management'),
          preferredSize: Size.fromHeight(kToolbarHeight)),
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
        child: Container(
          child: Image.asset('assets/images/my_properties.png'),
        ),
      ),
      backgroundColor: hextocolor('#E5E5E5'),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
