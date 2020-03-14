import 'package:flutter/material.dart';

const bg_color=Color(0xFF1D1E33);
const h =80.0;
const btc=Color(0xFFC71585);

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
  theme:ThemeData.dark().copyWith(
    primaryColor: Color(0xff0A0E21),
    scaffoldBackgroundColor: Color(0xff0A0E21),

  )
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

   return Scaffold(
      appBar: AppBar(
        title: Text("IBM calculator"),
        centerTitle: true,
      ),
      body:Column(
        children: <Widget>[
            Expanded(
                      child: Row(children: <Widget>[
              Expanded(child: Expend(colour: bg_color,)),
              Expanded(child: Expend(colour: bg_color,)),
              
            ],),
          ),
          Expanded(child: Expend(colour: bg_color,)),
          Expanded(
                      child: Row(children: <Widget>[
              Expanded(child: Expend(colour: bg_color,)),
              Expanded(child: Expend(colour: bg_color,)),
              
            ],),
          ),

          Container(
            
            margin: EdgeInsets.only(top: 10.0),
            height: h,
          color: btc,
          )

          

      ],
       
      ),
     
    );
  }
}


class Expend extends StatelessWidget {
  Expend({@required this.colour});
  
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:  colour,
        borderRadius: BorderRadius.circular(10.0)
      ),
    margin: EdgeInsets.all(15.0),
    );
  }
}

