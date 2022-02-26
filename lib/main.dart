import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  var _inputUser = 0.0;
  var _kelvin = 0.0;
  var _reamor = 0.0;

  final TextEditingController txt1 = new TextEditingController(text: "");

  void kelvin(){
    setState(() {
      _inputUser = double.parse(txt1.text);
      _kelvin = _inputUser + 273;
    });
  }
  void reamor(){
    setState(() {
      _inputUser = double.parse(txt1.text);
      _reamor = 4/5 * _inputUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Konverter Suhu'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Masukkan Suhu Dalam Celcius"
                ),
                controller: txt1,
              ),
              Padding(padding: EdgeInsets.only(top: 200.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,     

                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Suhu dalam Kelvin'),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Text('$_kelvin',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w400
                        ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Suhu dalam Reamor'),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Text('$_reamor',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w400
                        ),
                        
                        )
                      ],
                    ),
                  ),
                  
                ],
                
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(107.0)),
                    new FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        kelvin();
                        reamor();
                      } , 
                      child: Text('Konnversi Suhu'),
                      height: 48.0,
                      minWidth: 400.0,
                      )
                  ],
                ))
            ],
          ),
      ),
      
      )
    );
  }
}

