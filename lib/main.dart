import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './reusablecomponent.dart';

//
//

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    //theming
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xff0A0E21),
      scaffoldBackgroundColor: Color(0xff0A0E21),
    )));

class MyApp extends StatelessWidget {
  
   Color malecolor=inactivecolor;
   Color femalecolor=inactivecolor;

   void update(int gender){
     if(gender==1)
       if(malecolor==inactivecolor){
         malecolor=bg_color;
       }
       else{
         malecolor=inactivecolor;
         
       }
     
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("IBM calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
         
          Expanded(
            child: Row(
              children: <Widget>[
              
                Expanded(
                  
                  child: GestureDetector(
                    onTap: (){
                    setState(() {
                                          update(1);
                                         });
                                                            },
                                                            child: Expend(
                                                              colour: malecolor,
                                                               cardchild:
                                                                Column(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  children: <Widget>[                        
                                                                     ficon(
                                                                       fcon:
                                                                        Icon(
                                                                          FontAwesomeIcons.mars,
                                                                          size: 100.0,),
                                                                       tex: "Male",)
                                                                 ],
                                                               ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Expend(
                                                              cardchild: Column(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                
                                                              children: <Widget>[
                                                              ficon(
                                                                fcon: Icon(
                                                                 FontAwesomeIcons.venus,
                                                                 size: 100.0,),
                                                                tex: "Female",)
                                                                
                                                              ],
                                                            ),
                                                          colour: bg_color,
                                                        )),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                      child: Expend(
                                                    colour: bg_color,
                                                  )),
                                                  Expanded(
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                            child: Expend(
                                                          colour: bg_color,
                                                        )),
                                                        Expanded(
                                                            child: Expend(
                                                          colour: bg_color,
                                                        )),
                                                      ],
                                                    ),
                                                  ),
                                        
                                                  Container(
                                                    
                                                    decoration: BoxDecoration(
                                                      color: btc,
                                                      
                                                      boxShadow: [BoxShadow(
                                        
                                                        color: Colors.pinkAccent.shade700,
                                                        blurRadius: 40.0,
                                                        // offset: Offset(10, 10),
                                                        
                                        
                                                      )],
                                                      border: Border.all(color: Colors.pink[600])
                                                    ),
                                                    margin: EdgeInsets.only(top: 10.0),
                                                    height: h,
                                                    
                                                    child: Center(child: Text("Calculate Your IBM",
                                                    style: 
                                                    TextStyle(
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.bold
                                                      ),)),
                                                  )
                                                ],
                                              ),
                                            );
                                          }
                                        
                                          
                    }