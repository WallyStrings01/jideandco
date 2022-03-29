import 'package:flutter/material.dart';
import 'package:jidetaiwoapp/widgets/appbar_widget.dart';
import 'package:jidetaiwoapp/widgets/bottom_navigation_bar_widget.dart';
import 'package:jidetaiwoapp/widgets/button_widget.dart';

class ProjectManagementScreen extends StatelessWidget {
  const ProjectManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          child: AppBarWidget('Project Management'),
          preferredSize: Size.fromHeight(kToolbarHeight)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: new Text(
                  'The Project Team work across the network of our branch offices located in every geo-political zones of Nigeria. Professionally qualified and leaning on a rare assemblage of wealth of experience, each consultant regularly updates knowledge of the current trends and potentialities of the future'),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Image.asset('assets/images/Project_Management.png'),
                  Padding(padding: EdgeInsets.all(8)),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Project Management & Development Services',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  Container(
                    child: Text(
                      'Our team of project development and management include professionals in the building industry. ',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: ElevatedButtonWidget(
                        width: 211,
                        height: 38,
                        buttonText: 'Speak To Us',
                        borderRadius: 10,
                        ontap: () {},
                        textColor: Colors.white,
                        bgColor: Theme.of(context).primaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
