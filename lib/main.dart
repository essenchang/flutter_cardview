import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {


    _card(String title, Color color, Function onTap) {
      return InkWell(
        onTap: () {onTap();},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          child: Card(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                child: Container(color: color, width: 5, height: 72,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                child: Text(title, style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                child: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black38,),
              ),
            ],
            ),
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _card('Bluebook', Colors.blueAccent,(){print("BBB");}),
            _card('FAM', Colors.deepOrangeAccent, (){print("FFF");}),
            _card('Booking', Colors.lightGreen, (){print("KKK");})
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
