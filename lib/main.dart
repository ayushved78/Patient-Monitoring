import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var Prox = 100;
    var rh =70;
    var rt1 = 84;
    var rt2 = 62;
    var hr = 0;
    var sp = 99;
    var XVal = 0;
    var YVal = 0;
    var ZVal = 0;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          height: size.height,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 10.0,),
                  Image.asset('assets/images/logo.jpeg',height: 100.0,width: 100.0,),
                  SizedBox(width: 5.0,),
                  Text(
                    'PATIENT MONITORING SYSTEM',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFFCB0E49),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              //HEALTH PARAMETERS
              Text(
                'HEALTH PARAMETERS',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color(0xFFCB0E49),
                ),
              ),
              SizedBox(height: 5.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/person.jpeg',height: 150,width: 100,),
                  Container(
                    height: 200,
                    width: 260,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        SizedBox(height: 20.0,),
                        Row(
                          children: [
                            Text(
                          'PROXIMITY',
                          style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFFCB0E49),
                            ),
                          ),
                          SizedBox(width: 30,),
                          Text(
                            '$Prox',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFFCB0E49),
                            ),
                          ),
                          ],
                        ),
                          SizedBox(height: 20,width: 60.0,),
                        Row(
                          children: [
                            Text(
                          'SPO2',
                          style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFFCB0E49),
                            ),
                          ),
                          SizedBox(width: 80,),
                          Text(
                            '$sp',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: sp< 90 ? Colors.green : Color(0xFFCB0E49),
                            ),
                          ),
                          ],
                        ),
                          SizedBox(height: 20.0,),
                        Row(
                          children: [
                            Text(
                          'HEART RATE',
                          style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFFCB0E49),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            '$hr',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: hr> 60 && hr< 80 ?Color(0xFFCB0E49) : Colors.green,
                            ),
                          ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),

              //WARD CONDITION
              Text(
                'WARD CONDITION',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color(0xFFCB0E49),
                ),
              ),
              SizedBox(height: 5.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/bed.jpeg',height: 150,width: 100,),
                  SizedBox(width: 20,),
                  Container(
                    height: 200,
                    width: 260,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        SizedBox(height: 20.0,),
                        Row(
                          children: [
                            Text(
                          'ROOM HUMIDITY',
                          style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFFCB0E49),
                            ),
                          ),
                          SizedBox(width: 30,),
                          Text(
                            '$rh',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFFCB0E49),
                            ),
                          ),
                          ],
                        ),
                          SizedBox(height: 20,width: 60.0,),
                        Row(
                          children: [
                            Text(
                          'ROOM TEMPRATURE(F)',
                          style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFFCB0E49),
                            ),
                          ),
                          SizedBox(width: 0,),
                          ],
                        ),
                          SizedBox(height: 10.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                          '$rt1',
                          style: TextStyle(
                                fontSize: 18.0,
                                color: rt1>50 && rt1<100 ? Colors.green : Color(0xFFCB0E49),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            '$rt2',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: rt2>70 && rt2<100 ? Colors.green : Color(0xFFCB0E49),
                            ),
                          ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              //Patient Movement
              Text(
                'PATIENT MOVEMENT',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color(0xFFCB0E49),
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'MOTION',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color(0xFFCB0E49),
                  // fontWeight: FontWeight.bold,
                ),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Column(
                    children: [
                      Text(
                        'X',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFCB0E49),
                        ),
                      ),
                       Text(
                        '$XVal',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFFCB0E49),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Text(
                        'Y',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFCB0E49),
                        ),
                      ),
                       Text(
                        '$YVal',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFFCB0E49),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Text(
                        'Z',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFCB0E49),
                        ),
                      ),
                       Text(
                        '$ZVal',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFFCB0E49),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
