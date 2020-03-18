import 'package:flutter/material.dart';



//all const variable

const bg_color = Color(0xFF1D1E33);
const h = 60.0;
const inactivecolor = Color(0xFF111328);
const btc = Color(0xFFC71585);





class Expend extends StatelessWidget {
  Expend({@required this.colour, this.cardchild});

  final Color colour;
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colour, 
          borderRadius:
           BorderRadius.circular(10.0)),
      margin: EdgeInsets.all(15.0),
      child: cardchild,
    );
  }
}


class ficon extends StatelessWidget{

   ficon({@required this.fcon,this.tex});

  final Icon fcon;
  final String tex;
  @override
  Widget build(BuildContext context){
    return Column(
                  children: <Widget>[
                    fcon,
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "$tex",
                      style: TextStyle(
                       fontSize: 20.0,
                       color:Color(0xFF8D8E98)
                    ),),
                  ],
                );
  }
}
