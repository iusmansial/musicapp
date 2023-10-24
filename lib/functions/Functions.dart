import 'package:flutter/material.dart';

Widget songcard(String image, String title, String desp) {
  return Container(
    height: 140,
    width: 100,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            ))),
    child: Stack(children: [
      Container(
          // height: 170,
          // width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(.8),
                Colors.black26.withOpacity(0.5),
                // Colors.blue.withOpacity(0.1),
                Colors.black26.withOpacity(0.5),
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                      color: Color.fromARGB(255, 235, 190, 243),
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  desp,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ))
    ]),
  );
}

Widget lsongcard(String image, String title, String desp) {
  return Container(
    height: 140,
    width: 170,
    margin: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            ))),
    child: Stack(children: [
      Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(.8),
                Colors.black26.withOpacity(0.5),
                Colors.black26.withOpacity(0.5),
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                      color: Color.fromARGB(255, 235, 190, 243),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  desp,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ))
    ]),
  );
}

Widget songcard2(String image, String title, String artist) {
  var width = 390;
  var height = 780;

  return Container(
    margin: EdgeInsets.only(top: width * 0.01, bottom: width * 0.01),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: height * 0.09,
          width: width * 0.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.blue,
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          margin: EdgeInsets.only(right: width * 0.02, left: width * 0.02),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.02,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.008,
            ),
            Text(
              artist,
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: height * 0.016,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Spacer(),
        Icon(
          Icons.play_arrow_rounded,
          color: Colors.white,
          size: height * 0.04,
        )
      ],
    ),
  );
}

void Switch(index) {
  switch (index) {
    case 0:
      break;
    default:
  }
  ;
}
