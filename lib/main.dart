import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

void main() async{
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

   var Prox = [ "Near","Near","Near","Near","Near","Near","Near","Near","Far","Near","Near","Far","Near","Near","Near","Near","Near","Near","Near","Near","Near","Near","Far","Near","Near","Near","Near","Near","Near","Near","Near","Near","Near","Near","Near","Near","Near","Far"];
    var rh =["0","0","96","92","97","91","91","91","91","92","96","92","97","91","96","92","97","91","91","91","91","92","96","92","97","91","96","92","97","91","91","91","91","92","96","92","97","91","96","92","97","91","91","91","91","92","96","92","97","91"];
    var rt1 = ["0","21","24","25","26","26.3","26.9","26.8","26.7","21","21","24","25","26","26.3","26.9","26.8","26.7","21","21","24","25","26","26.3","26.9","26.8","26.7","21","21","24","25","26","26.3","26.9","26.8","26.7","21","21","24","25","26","26.3","26.9","26.8","26.7","21"];
    var rt2 = ["84.3","87.1","86.2","89.5","84.3","87.1","86.2","89.5","84.3","87.1","86.2","84.3","87.1","86.2","89.5","84.3","87.1","86.2","89.5","84.3","87.1","86.2","84.3","87.1","86.2","89.5","84.3","87.1","86.2","89.5","84.3","87.1","86.2","84.3","87.1","86.2","89.5","84.3","87.1","86.2","89.5","84.3","87.1","86.2",];
    var hr = ["0","0","0","0","0","9.38","18.23","34.36","38.98","55.15","55.15","44.48","58.3","58.3","63.39","76.57","9.38","18.23","34.36","38.98","55.15","55.15","44.48","58.3","58.3","63.39","76.57","9.38","18.23","34.36","38.98","55.15","55.15","44.48","58.3","58.3","63.39","76.57","9.38","18.23","34.36","38.98","55.15","55.15","44.48","58.3","58.3","63.39","76.57"];//var sp = [0,0,0,0,0,54,34,21,12,96,96,96,96,95,95,96,95,95,96,96,94,94,94,94,94,94,94,0,96,96,94,94,94,0,96,96,94,94,94,94,95,95,95,0,0,0,0,0,95,97,97,97,96,96,96,96,96,96,97,97,97,97,97,97,96,96,96,96,96,96,96,96,96,96,96,96,96,96,97,97,97,97,97,97,97,97,96,97,96,96,96,98,98,98,98,96,96,96,96,96,96,96,96,97,97,97,95,95,94,94];
    var sp = ["0","0","0","0","0","0","54","34","21","12","96","96","96","96","95","94","94","94","94","0""96","96","96","96","95","94","94","94","94","0","96","96","96","96","95","94","94","94","94","0","96","96","96","96","95","94","94","94","94","0","96","96","96","96","95","94","94","94","94","0","96","96","96","96","95","94","94","94","94","0","96","96","96","96","95","94","94","94","94","0","96","96","96","96","95","94","94","94","94","0"];
    var XVal = ["-26.98","-27.09","-27.07","-26.98","-26.71","-20.68","-25.34","-20.93","-21.21","-24.83","-29.39","-26.98","-27.09","-27.07","-26.98","-26.71","-20.68","-25.34","-20.93","-21.21","-24.83","-29.39""-26.98","-27.09","-27.07","-26.98","-26.71","-20.68","-25.34","-20.93","-21.21","-24.83","-29.39""-26.98","-27.09","-27.07","-26.98","-26.71","-20.68","-25.34","-20.93","-21.21","-24.83","-29.39"];
    var YVal = ["-20.49","-20.52","-20.49","-20.49","-46.76","-26.77","-56.05","-56.05","-26.5","-20.88","-23.4","-25.01","-24.77","-25.04","-19.76","-20.49","-20.52","-20.49","-20.49","-46.76","-26.77","-56.05","-56.05","-26.5","-20.88","-23.4","-25.01","-24.77","-25.04","-19.76","-20.49","-20.52","-20.49","-20.49","-46.76","-26.77","-56.05","-56.05","-26.5","-20.88","-23.4","-25.01","-24.77","-25.04","-19.76"];
    var ZVal = ["32.12","56.41","42.54","32.12","56.41","12.32","56.41","42.54","56.41","56.41","56.41","12.32","32.12","56.41","42.54","32.12","56.41","12.32","56.41","42.54","32.12","56.41","42.54","32.12","56.41","12.32","56.41","42.54","56.41","56.41","56.41","12.32","32.12","56.41","42.54","32.12","56.41","12.32","56.41","42.54","32.12","56.41","42.54","32.12","56.41","12.32","56.41","42.54","56.41","56.41","56.41","12.32","32.12","56.41","42.54","32.12","56.41","12.32","56.41","42.54","32.12","56.41","42.54","32.12","56.41","12.32","56.41","42.54","56.41","56.41","56.41","12.32","32.12","56.41","42.54","32.12","56.41","12.32","56.41","42.54","32.12","56.41","42.54","32.12","56.41","12.32","56.41","42.54","56.41","56.41","56.41","12.32","32.12","56.41","42.54","32.12","56.41","12.32","56.41","42.54"];
String proxText = "";
int proxCurrentIndex = 0;


String rhText = "";
int rhCurrentIndex = 0;


String rt1Text = "";
int rt1CurrentIndex = 0;


String rt2Text = "";
int rt2CurrentIndex = 0;


String hrText = "";
int hrCurrentIndex = 0;


String spText = "";
int spCurrentIndex = 0;


String xText = "";
int xCurrentIndex = 0;


String yText = "";
int yCurrentIndex = 0;


String zText = "";
int zCurrentIndex = 0;
    @override
  void initState() {

    Timer.periodic(
      Duration(seconds: 5,), (_){
        setState((){
        proxText = Prox[proxCurrentIndex];
        proxCurrentIndex += 1;
        if(proxCurrentIndex == Prox.length)
        proxCurrentIndex =0;});

        },);
// rh
        Timer.periodic(
      Duration(seconds: 5,), (_){
        setState((){
        rhText = rh[rhCurrentIndex];
        rhCurrentIndex += 1;
        if(rhCurrentIndex == rh.length)
        rhCurrentIndex =0;});

        },);

        // rt1
        Timer.periodic(
      Duration(seconds: 5,), (_){
        setState((){
        rt1Text = rt1[rt1CurrentIndex];
        rt1CurrentIndex += 1;
        if(rt1CurrentIndex == rt1.length)
        rt1CurrentIndex =0;});

        },);

        // rt2
        Timer.periodic(
      Duration(seconds: 5,), (_){
        setState((){
        rt2Text = rt2[rt2CurrentIndex];
        rt2CurrentIndex += 1;
        if(rt2CurrentIndex == rt2.length)
        rt2CurrentIndex =0;});

        },);
        // hr
        Timer.periodic(
      Duration(seconds: 5,), (_){
        setState((){
        hrText = hr[hrCurrentIndex];
        hrCurrentIndex += 1;
        if(hrCurrentIndex == hr.length)
        hrCurrentIndex =0;});

        },);
        // sp
        Timer.periodic(
      Duration(seconds: 5,), (_){
        setState((){
        spText = sp[spCurrentIndex];
        spCurrentIndex += 1;
        if(spCurrentIndex == sp.length)
        spCurrentIndex =0;});

        },);
        // x
        Timer.periodic(
      Duration(seconds: 5,), (_){
        setState((){
        xText = XVal[xCurrentIndex];
        xCurrentIndex += 1;
        if(xCurrentIndex == XVal.length)
        xCurrentIndex =0;});

        },);

        // y
        Timer.periodic(
      Duration(seconds: 5,), (_){
        setState((){
        yText = YVal[yCurrentIndex];
        yCurrentIndex += 1;
        if(yCurrentIndex == YVal.length)
        yCurrentIndex =0;});

        },);

        // z
        Timer.periodic(
      Duration(seconds: 5,), (_){
        setState((){
        zText = ZVal[zCurrentIndex];
        zCurrentIndex += 1;
        if(zCurrentIndex == ZVal.length)
        zCurrentIndex =0;});

        },);
  }


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // final List<String> Prox =  [ "Near","Near","Near","Near","Near","Near","Near","Near","Far","Near","Near","Far","Near","Near","Near","Near","Near","Near","Near","Near","Near","Near","Far","Near","Near","Near","Near","Near","Near","Near","Near","Near","Near","Near","Near","Near","Near","Far"];
    // List<int> rh =[0,0,96,92,97,91,91,91,91,92,96,92,97,91,91,91,91,92,96,92,97,91,91,91,91,92,96,92,97,91,91,91,91,92,96,92,97,91,91,91,91,92,96,92,97,91,91,91,91,92];
    // List<int> rt1 = [0,21,24,25,26,26,26,26,8,26,7,21,24,25,26,26,26,26,8,26,7,21,24,25,26,26,8,26,7,21,24,25,26,26,8,26,7,21,24,25,26,26,8,26,7];
    // List<int> rt2 = [84,84,86,2,89,5,84,87,86,2,89,5,84,87,86,2,89,5,84,87,86,2,89,5,84,87,86,2,89,5,84,87,86,2,89,5,84,87,86,2,89,5,84,87,86,2,89,5];
    // var hr = [0.0,0.0,0.0,0.0,0.0,9.38,18.23,34.36,38.98,55.15,55.15,44.48,58.3,58.3,63.39,76.57,82.31,77.94,120.76,100.38,83.72,61.06,58.72,58.72,0,0,0,0,0,0,30.07,49.11,49.11,35.58,35.58,0,62.88,71.83,71.83,38.4,51.32,51.32,39.63,39.63,0,31.8,31.8,31.82,31.82,28.69,44.64,44.64,35.82,35.82,39.37,54.26,54.26,40.65,63.88,63.88,41.47,53.15,64.53,67.26,44.69,57.4,62.74,62.74,41.62,55.01,55.01,55.42,55.42,43.58,60.83,46.31,65.37,71.03,68.91,44.57,57.33,57.33,58.92,69.21,69.74,69.74,43.12,56.67,68.41,69.85,72.65,66.33,66.62,66.78,66.78,41.44,53.1,60.6,60.6,41.25,37.97,51.27,58.92,65.97,65.97,43.47,40.78,46.51,46.93,118.35,83.68,83.68];
    // var sp = [0,0,0,0,0,54,34,21,12,96,96,96,96,95,95,96,95,95,96,96,94,94,94,94,94,94,94,0,96,96,94,94,94,0,96,96,94,94,94,94,95,95,95,0,0,0,0,0,95,97,97,97,96,96,96,96,96,96,97,97,97,97,97,97,96,96,96,96,96,96,96,96,96,96,96,96,96,96,97,97,97,97,97,97,97,97,96,97,96,96,96,98,98,98,98,96,96,96,96,96,96,96,96,97,97,97,95,95,94,94];
    // var XVal = [-26.98,-27.09,-27.07,-26.98,-26.71,-20.68,-25.34,-20.93,-21.21,-24.83,-29.39,-29.9,-29.01,-31.31,-24.33,-22.59,-22.87,-21.72,-21.52,-22.69,-22.44,-23.42,-23.13,-23.24,-23.75,-26.47,-26.05,-22.27,-22.26,-25.25,-27.66,-27.46,-27.27,-24.12,-23.15,-25.52,-22.17,-24.3,-23.58,-23.81,-24.57,-25.55,-20.5,-32.75,-22.93,-22.96,-23.03,-23.6,-22.32,-22.81,-21.91,-21.72,-22.63,-24.09,-22.87,-23.76,-24.54,-23.66,-21.25,-21.01,-21.34,-21.64,-21.37,-21.72,-20.83,-18.95,-19.42,-18.41,-18.06,-19.16,-18.8,-18.75,-19.34,-20.03,-19.72,-19.84,-20.15,-20.32,-20.08,-20.53,-23.34,-22.6,-23.09,-22.63,-22.65];
    // var YVal = [-20.49,-20.52,-20.49,-20.49,-46.76,-26.77,-56.05,-56.05,-26.5,-20.88,-23.4,-25.01,-24.77,-25.04,-19.76,-23.61,-56.05,-30.5,-20.97,-37.76,-28.4,-56.05,-24.04,-20.89,-23.7,-36.71,-31.58,-31.44,-56.05,-21.68,-30.31,-26.74,-28.29,-56.05,-40.65,-27.22,-28.65,-23.58,-32.14,-22.16,-28.35,-21.92,-54.62,-39.5,-56.05,-56.05,-45.19,-56.05,-23.64,-23.35,-23.52,-23.83,-23.37,-23.52,-22.88,-23.56,-23.46,-22.88,-25.07,-24.65,-25.26,-25.16,-24.98,-24.92,-26.41,-24.29,-24.31,-23.61,-24.05,-22.8,-21.59,-21.49,-21.32,-21.07,-21.52,-21.22,-20.88,-20.68,-27.16,-20.97,-19.58,-20.77,-18.58,-18.55,-18.58];
    // var ZVal = [32.12,56.41,42.54,32.12,56.41,12.32,56.41,42.54,56.41,56.41,56.41,12.32,32.12,56.41,42.54,32.12,56.41,12.32,56.41,42.54,56.41,56.41,56.41,12.32,32.12,56.41,42.54,32.12,56.41,12.32,56.41,42.54,56.41,56.41,56.41,12.32,32.12,56.41,42.54,32.12,56.41,12.32,56.41,42.54,56.41,56.41,56.41,12.32,32.12,56.41,42.54,32.12,56.41,12.32,56.41,42.54,56.41,56.41,56.41,12.32,32.12,56.41,42.54,32.12,56.41,12.32,56.41,42.54,56.41,56.41,56.41,12.32,32.12,56.41,42.54,32.12,56.41,12.32,56.41,42.54,56.41,56.41,56.41,12.32,32.12,56.41,42.54,32.12,56.41,12.32,56.41,42.54,56.41,56.41,56.41,12.32,56.41,56.41];


   
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
                          // for(var t in Prox)
                          // Future here
                          Text(
                            '$proxText',
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
                            '$spText',
                            style: TextStyle(
                                fontSize: 18.0,
                                // color: sp< 90 ? Colors.green : Color(0xFFCB0E49),
                                color: Color(0xFFCB0E49),
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
                            '$hrText',
                            style: TextStyle(
                                fontSize: 18.0,
                                // color: hr> 60 && hr< 80 ?Color(0xFFCB0E49) : Colors.green,
                                color: Color(0xFFCB0E49),
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
                            '$rhText',
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
                          '$rt1Text',
                          style: TextStyle(
                                fontSize: 18.0,
                                // color: rt1>50 && rt1<100 ? Colors.green : Color(0xFFCB0E49),
                                color: Color(0xFFCB0E49),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            '$rt2Text',
                            style: TextStyle(
                                fontSize: 18.0,
                                // color: rt2>70 && rt2<100 ? Colors.green : Color(0xFFCB0E49),
                                color: Color(0xFFCB0E49),
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
                        '$xText',
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
                        '$yText',
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
                        '$zText',
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