import 'package:flutter/material.dart';
import 'package:jidetaiwoapp/widgets/appbar_widget.dart';
import 'package:jidetaiwoapp/widgets/bottom_navigation_bar_widget.dart';

class PublicSectorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          child: AppBarWidget('Project Management'),
          preferredSize: Size.fromHeight(kToolbarHeight)),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                child: new Text(
                  'Jide Taiwo and Co. Public Sector Services team advises clients across the whole spectrum of the public sector. We provide comprehensive property advice in the form of estate strategies, asset management planning and cost reduction initiatives.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                child: new Text(
                  'We undertake feasibility studies, options appraisals and business case work which underpin capital investment decisions and funding approvals in all areas. We add value through the planning and development process, as well as help structure Public Private Partnerships (PPP) or Joint Ventures (JV).',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ],
          )),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
