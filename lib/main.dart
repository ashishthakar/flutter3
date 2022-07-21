import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
  
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0,two=0,three=0;
  void fun(){
    setState((){
      number = number + 1;
      two = number * number;
      three = two * two;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(" I Miss Flutter"),
          centerTitle: true,
          backgroundColor: Colors.greenAccent[400],
        ),

        body:Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Container(
                //   padding: EdgeInsets.all(40),
                //   color: Colors.lightBlue,
                //   child: Text('$number'),
                // ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.orange,
                  // width: double.maxFinite,
                  child: Text('$number'),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.white,
                  child: Text('$two'),
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  color: Colors.green,
                  child: Text('$three'),
                ),
              ],
            ),
            VerticalDivider(color: Colors.white, width:0, thickness: 2 ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.orange,
                  child: Text('$number'),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.white,
                  child: Text('$two'),
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  color: Colors.green,
                  child: Text('$three'),
                )
              ],
            ),
          ],
        ),


        floatingActionButton: FloatingActionButton(
          onPressed: (){
           fun();
          },
          backgroundColor: Colors.yellow,
          child: Text('click'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),

    );
  }
}
