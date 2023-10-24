import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:musicapp/search.dart';

import 'functions/Functions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var index = 0;
  var navindex = 0;
  var height, width;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                ),
                label: 'Saved',
              )
            ],
            onTap: (value) {
              setState(() {
                index = value;
                if (index == 0) {
                  // Navigator.pop(context);
                  pageController.jumpToPage(0);
                  setState(() {
                    navindex = 0;
                  });
                } else if (index == 1) {
                  // Navigator.pop(context);
                  pageController.jumpToPage(1);
                  navindex = 1;
                }
              });
            },
            currentIndex: navindex,
            backgroundColor: Colors.grey[800],
            selectedItemColor: Colors.deepPurple[300],
            unselectedItemColor: Colors.white,
            elevation: 10,
          ),
          backgroundColor: Colors.black,
          body: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: pageController,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: width * 0.05),
                        child: Text(
                          "Good afternoon, Usman!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: height * 0.04,
                      width: width,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text(
                            "Pick up from where you left off",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.022,
                                fontWeight: FontWeight.bold),
                          ),
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
                              "View all",
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
                      height: height * 0.2,
                      width: width,
                      // color: Colors.deepPurple,
                      margin: EdgeInsets.only(
                          top: height * 0.02, bottom: height * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          songcard('assets/sad.jpg', 'Sad', 'For Memories'),
                          songcard('assets/jazz.jpg', 'Jazz', 'Have Fun'),
                          songcard('assets/messy.jpg', 'Chill', 'Study Books')
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: width * 0.04),
                          child: Text(
                            "For you",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.034,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: width * 0.04),
                          height: height * 0.035,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey[900],
                          ),
                          child: Center(
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        lsongcard('assets/artist.jpg', "Your Top ", "Artists"),
                        lsongcard(
                            'assets/bestof.jpg', "Best of", "Chillie Music")
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.04,
                          top: width * 0.02,
                          bottom: width * 0.02),
                      child: Text(
                        "Popular Songs",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.027,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      // height: height * 0.205,
                      // width: width,
                      child: ListView(
                        children: [
                          songcard2(
                              'assets/weekend2.jpg', "Rockstar", "Weekend"),
                          songcard2('assets/Shubh.webp', "Rollin", "Shubh"),
                          songcard2('assets/pasoori.webp', "Pasoori",
                              "Ali sethi & Shai gill"),
                        ],
                      ),
                    )
                  ],
                ),
                Searchpage(),
              ]),
        ));
  }
}
