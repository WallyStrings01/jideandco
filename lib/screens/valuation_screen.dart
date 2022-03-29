import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jidetaiwoapp/widgets/appbar_widget.dart';
import 'package:jidetaiwoapp/widgets/bottom_navigation_bar_widget.dart';
import 'package:jidetaiwoapp/widgets/button_widget.dart';

import '../widgets/Data_widget.dart';
import '../widgets/appbar_widget.dart';

class ValuationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            child: AppBarWidget('Valuation'),
            preferredSize: Size.fromHeight(kToolbarHeight)),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 40),
            child: ListView.builder(
                itemCount: Valuations.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Image.asset(
                          '${Valuations[index].image}',
                          height: 234,
                          width: double.infinity,
                        ),
                        Padding(padding: EdgeInsets.all(8)),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            Valuations[index].title,
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
                            Valuations[index].text,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8)),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: ElevatedButtonWidget(
                              width: 211,
                              height: 38,
                              buttonText: 'Book A Valuation',
                              borderRadius: 10,
                              ontap: () {},
                              textColor: Colors.white,
                              bgColor: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                  );
                })),
        bottomNavigationBar: BottomNavigationWidget());
  }
}
