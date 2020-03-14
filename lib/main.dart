import 'package:flutter/material.dart';

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
              Expanded(child: Expend(colour: Color(0xFF1D1E33),)),
              Expanded(child: Expend(colour: Color(0xFF1D1E33),)),
              
            ],),
          ),
          Expanded(child: Expend(colour: Color(0xFF1D1E33),)),
          Expanded(
                      child: Row(children: <Widget>[
              Expanded(child: Expend(colour: Color(0xFF1D1E33),)),
              Expanded(child: Expend(colour: Color(0xFF1D1E33),)),
              
            ],),
          ),

          

      ],
       
      ),
     
    );
  }
}


class Expend extends StatelessWidget {
  Expend({@required this.colour});
  
  Color colour;

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

