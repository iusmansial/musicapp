import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'functions/Functions.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  var height, width;
  var index = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: height * 0.03),
              height: height * 0.1,
              width: width,
              // color: Colors.deepPurpleAccent,
              child: Stack(children: [
                Padding(
                  padding: EdgeInsets.only(right: width * 0.3),
                  child: Center(
                    child: Container(
                      height: height * 0.045,
                      width: width * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[900],
                      ),
                      child: Center(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search here',
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 21,
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.65),
                  child: Center(
                    child: Container(
                      width: width * 0.2,
                      child: const Icon(
                        Icons.notifications,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: width * 0.86),
                    child: Center(
                        child: Container(
                      height: height * 0.04,
                      width: width * 0.08,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: const DecorationImage(
                              image: AssetImage("assets/person.jpg"),
                              fit: BoxFit.cover)),
                    ))),
              ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Text(
                  "Recent Searches",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.024,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: width * 0.1,
              ),
              Container(
                height: height * 0.035,
                width: width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[900],
                ),
                child: Center(
                  child: Text(
                    "Clear",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.02,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          Container(
            height: height * 0.35,
            width: width,
            // color: Colors.green,
            child: ListView(
              children: [
                songcard2('assets/weekend2.jpg', "Rockstar", "Weekend"),
                songcard2('assets/Shubh.webp', "Rollin", "Shubh"),
                songcard2(
                    'assets/pasoori.webp', "Pasoori", "Ali sethi & Shai gill"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: width * 0.04, bottom: width * 0.04, right: width * 0.37),
            child: Text(
              "Based on what you like",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.027,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  lsongcard('assets/artist.jpg', "Your Top ", "Artists"),
                  lsongcard('assets/bestof.jpg', "Best of", "Chillie Music")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  lsongcard('assets/artist.jpg', "Your Top ", "Artists"),
                  lsongcard('assets/bestof.jpg', "Best of", "Chillie Music")
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
