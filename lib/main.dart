import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orientationdemo/config.dart';

void main()
{
  runApp(MaterialApp(home: demo() ,));
}
class demo extends StatefulWidget {


  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Config(context);
    return OrientationBuilder(builder: (context, orientation) {
      print(orientation);
      return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(color: Colors.cyan,margin: EdgeInsets.all(10),height: Config.bodyheight*0.2,width: Config.totalwidth*0.5,),
          Container(color: Colors.orange,margin: EdgeInsets.all(10),height: Config.bodyheight*0.8,width: Config.totalwidth*0.5,)
        ]),
      );
    },);
  }
}
