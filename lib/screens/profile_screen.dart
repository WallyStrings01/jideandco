import 'package:flutter/material.dart';
import 'package:jidetaiwoapp/widgets/appbar_widget.dart';
import 'package:jidetaiwoapp/widgets/bottom_navigation_bar_widget.dart';
import 'package:jidetaiwoapp/widgets/button_widget.dart';

import '../hextocolor.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _Controller1 =
      new TextEditingController(text: 'Oluwajuwon Smith');
  TextEditingController _Controller2 =
      new TextEditingController(text: 'www@gmail.com');
  TextEditingController _Controller3 =
      new TextEditingController(text: '09022725654');
  TextEditingController _Controller4 =
      new TextEditingController(text: 'VI Lagos State');

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
          child: AppBarWidget('My Profile'),
          preferredSize: Size.fromHeight(kToolbarHeight)),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
              key: _formKey,
              child: Column(children: [
                _buildTextForm('Name', _Controller1),
                Padding(padding: EdgeInsets.all(8)),
                _buildTextForm('Phone', _Controller2),
                Padding(padding: EdgeInsets.all(8)),
                _buildTextForm('Email', _Controller3),
                Padding(padding: EdgeInsets.all(8)),
                _buildTextForm('Address', _Controller4),
                Padding(padding: EdgeInsets.all(30)),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Last Login: 06/03/2022 6:32 pm',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Padding(padding: EdgeInsets.all(90)),
                ElevatedButtonWidget(
                    width: double.infinity,
                    height: 55,
                    buttonText: 'Edit Profile',
                    borderRadius: 10,
                    ontap: () {},
                    textColor: Colors.white,
                    bgColor: Theme.of(context).primaryColor),
              ]))),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
