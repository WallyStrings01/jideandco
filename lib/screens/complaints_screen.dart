import 'package:flutter/material.dart';
import 'package:jidetaiwoapp/widgets/appbar_widget.dart';
import 'package:jidetaiwoapp/widgets/bottom_navigation_bar_widget.dart';

import '../hextocolor.dart';
class ComplaintsScreen extends StatelessWidget {
  final TextEditingController _controller = new TextEditingController(text: 'Add complaints');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          child: AppBarWidget('Complaints'),
          preferredSize: Size.fromHeight(kToolbarHeight)),
    body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          TextFormField(
            controller: _controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              filled: true,
              fillColor: hextocolor('#FFFFFF'),
              contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            ),
          ),
         Padding(padding: EdgeInsets.all(10),),
         Container(
           height: 450,
          decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
           child:DataTable(
               columns: [
                 DataColumn(label: Text('#')),
                 DataColumn(label: Text('Complaints')),
                 DataColumn(label: Text('Status')),
                 DataColumn(label: Text('View')),
               ],
               showBottomBorder: true,

               rows: [

               ]) ,
         )

        ],
      ),
    ),
    bottomNavigationBar: BottomNavigationWidget(),
    backgroundColor: hextocolor('#E5E5E5'),);
  }
}
