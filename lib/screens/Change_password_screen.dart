import 'package:flutter/material.dart';
import 'package:jidetaiwoapp/widgets/appbar_widget.dart';
import 'package:jidetaiwoapp/widgets/bottom_navigation_bar_widget.dart';
import 'package:jidetaiwoapp/widgets/button_widget.dart';

import '../hextocolor.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _Controller1 =
      new TextEditingController(text: 'Oluwajuwon Smith');
  TextEditingController _Controller2 =
      new TextEditingController(text: '09022725654');
  TextEditingController _Controller3 =
      new TextEditingController(text: '09022725654');

  Widget _buildTextForm(String name, TextEditingController Controller) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text(name),
        ),
        TextFormField(
          controller: Controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
            ),
            filled: true,
            fillColor: hextocolor('#FAFAFA'),
            labelStyle: Theme.of(context).textTheme.bodyText2,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            child: AppBarWidget('Change Password'),
            preferredSize: Size.fromHeight(kToolbarHeight)),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
                key: _formKey,
                child: Column(children: [
                  _buildTextForm('Old Password', _Controller1),
                  Padding(padding: EdgeInsets.all(8)),
                  _buildTextForm('New Password', _Controller2),
                  Padding(padding: EdgeInsets.all(8)),
                  _buildTextForm('Confirm New Password', _Controller3),
                  Padding(padding: EdgeInsets.all(40)),
                  ElevatedButtonWidget(
                      width: double.infinity,
                      height: 55,
                      buttonText: 'Update',
                      borderRadius: 10,
                      ontap: () {},
                      textColor: Colors.white,
                      bgColor: hextocolor('#22C929')),
                ]))),
    bottomNavigationBar: BottomNavigationWidget(),);
  }
}
