import 'package:flutter/material.dart';
import 'package:jidetaiwoapp/widgets/Data_widget.dart';
import 'package:jidetaiwoapp/widgets/appbar_widget.dart';
import 'package:jidetaiwoapp/widgets/bottom_navigation_bar_widget.dart';
import 'package:jidetaiwoapp/widgets/button_widget.dart';

class AdvisoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          child: AppBarWidget('Advisory & Consultancy'),
          preferredSize: Size.fromHeight(kToolbarHeight)),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 30),
          child: ListView.builder(
              itemCount: Advisories.length,
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    children: [
                      Image.asset(
                        '${Advisories[index].image}',
                        height: 234,
                        width: double.infinity,
                      ),
                      Padding(padding: EdgeInsets.all(8)),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          Advisories[index].title,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8)),
                      Container(
                        child: Text(
                          Advisories[index].text,
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
                );
              })),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
