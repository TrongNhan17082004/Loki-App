import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String loki = 'images/loki2.png';

  //* Love Button
  Color buttonColor1 = Colors.white;
  Color text1 = Colors.white;
  Color background1 = Colors.black;

  //* Hate Button
  Color buttonColor2 = Colors.white;
  Color text2 = Colors.white;
  Color background2 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[600],
          centerTitle: true,
          title: Text(
            'I am Loki',
            style: TextStyle(fontFamily: 'Pacifico'),
          ),
        ),
        body: Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
              ),
              Expanded(flex: 2, child: Center(child: Image.asset(loki))),
              Center(
                child: Text(
                  'Do you love me ?',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                      fontSize: 30),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //* Love Button
                    RaisedButton(
                      color: background1,
                      onPressed: () {
                        setState(() {
                          loki = 'images/loki1.png';
                          //* Button 1
                          buttonColor1 = Colors.red;
                          text1 = Colors.red;
                          background1 = Colors.red.shade200;

                          //* Button 2
                          buttonColor2 = Colors.white;
                          text2 = Colors.white;
                          background2 = Colors.black;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: buttonColor1,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'I love you Loki',
                              style: TextStyle(
                                color: text1,
                                fontFamily: 'Pacifico',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    //* Dislike Button
                    RaisedButton(
                      color: background2,
                      onPressed: () {
                        setState(() {
                          loki = 'images/loki3.png';

                          //* Button 2
                          buttonColor2 = Colors.blue;
                          text2 = Colors.blue;
                          background2 = Colors.blue.shade200;

                          //* Button 1
                          buttonColor1 = Colors.white;
                          text1 = Colors.white;
                          background1 = Colors.black;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.sick,
                              color: buttonColor2,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'I don\'t love you',
                              style: TextStyle(
                                  color: text2, fontFamily: 'Pacifico'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
