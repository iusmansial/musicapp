import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          height: height,
          width: width,
          color: Colors.black,
          child: Stack(
            children: [
              Container(
                height: height * 0.7,
                width: width,
                color: Colors.amber,
                child: Image.network(
                  "https://media.istockphoto.com/id/535403859/photo/dancing-at-disco.jpg?s=612x612&w=0&k=20&c=mVZX9qAsgnOv8C0t9gR81ofJ0JG20Orc4Io9r4AKNQQ=",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: height * 0.7,
                width: width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black12, Colors.black])),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.25),
                child: Center(
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.5,
                    // color: Colors.amber,
                    child: Center(
                        child: Text(
                      "MusicX",
                      style: TextStyle(
                          fontSize: height * 0.06,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.4),
                child: Center(
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.6,
                    // color: Colors.amber,
                    child: Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "Listen to free music from your favorite artists",
                      style: TextStyle(
                          fontSize: height * 0.024,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
              Center(
                  child: Padding(
                padding: EdgeInsets.only(top: height * 0.6),
                child: Container(
                    height: height * 0.09,
                    width: width * 0.8,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.w500),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple[500],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20.0), // Adjust the radius as per your requirement
                          ),
                        ))),
              )),
              Padding(
                padding: EdgeInsets.only(top: height * 0.8),
                child: Center(
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.8,
                    // color: Colors.amber,
                    child: Center(
                        child: Text(
                      "I already have an account",
                      style: TextStyle(
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
