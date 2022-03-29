import 'package:flutter/material.dart';
import 'package:jidetaiwoapp/hextocolor.dart';
import 'package:jidetaiwoapp/widgets/button_widget.dart';
class GetInTouchScreen extends StatefulWidget {
  @override
  _GetInTouchScreenState createState() => _GetInTouchScreenState();
}

class _GetInTouchScreenState extends State<GetInTouchScreen> {
  final _formKey = GlobalKey<FormState>();
  Widget _buildTextForm(String name){
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius:BorderRadius.circular(9),),
          labelText: name,
        filled: true,
        fillColor: hextocolor('#E1E1E1'),
          hoverColor:hextocolor('#E1E1E1') ,
          labelStyle: Theme.of(context).textTheme.bodyText2,
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      ) ,
    );
  }

  @override
  Widget build(BuildContext context) {
    final maxlines = 5;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 28,
            )),
        title: Text('Get In Touch',
          style: TextStyle(
              fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
              fontSize: 20,color: hextocolor('#000000')),
        ),
        centerTitle: true,
      ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child:Form(
                  key: _formKey,
                  child: Column(children: [
                    _buildTextForm('Name'),
                    Padding(padding: EdgeInsets.all(8)),
                    _buildTextForm('Email'),
                    Padding(padding: EdgeInsets.all(8)),
                    _buildTextForm('Phone'),
                    Padding(padding: EdgeInsets.all(8)),
                    TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          hintText: 'Subject',
                          labelStyle: Theme.of(context).textTheme.bodyText2,
                          fillColor: hextocolor('#E1E1E1'),
                          //contentPadding: EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 80.0),
                          contentPadding: const EdgeInsets.symmetric(vertical: 70.0, horizontal: 10.0),
                        ) ,
                        maxLines: 4,
                        minLines: 1,
                      ),
                    Padding(padding: EdgeInsets.all(40)),
                    ElevatedButtonWidget(
                        width: double.infinity,
                        height: 38,
                        buttonText: 'Submit', borderRadius:10, ontap: (){},
                        textColor: Colors.white,
                        bgColor: Theme.of(context).primaryColor)

                  ],
                  )

              )),
        )


          );
  }
}
