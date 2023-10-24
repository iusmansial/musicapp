import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:musicapp/home.dart';

import 'package:musicapp/signuppage.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: height,
        width: width,
        color: Color.fromRGBO(0, 0, 0, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.15,
            ),
            Container(
              height: height * 0.05,
              width: width * 1,
              // color: Colors.purple,
              child: Center(
                child: Text(
                  "Welcome Back!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: height * 0.04,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.1,
              width: width * 0.8,
              // color: Colors.purple,
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Sign in to discover stream and enjoy millions of songs ",
                  style: TextStyle(
                      fontSize: height * 0.025,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.075,
              width: width * 0.85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  // color: Colors.deepPurple,
                  border: Border.all(color: Colors.white)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    style:
                        TextStyle(color: Colors.white, fontSize: height * 0.02),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.075,
              width: width * 0.85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  // color: Colors.deepPurple,
                  border: Border.all(color: Colors.white)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    style:
                        TextStyle(color: Colors.white, fontSize: height * 0.02),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Homepage');
              },
              child: Container(
                  height: height * 0.075,
                  width: width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                      child: Text(
                    "Sign in",
                    style: TextStyle(
                        fontSize: height * 0.023,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ))),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
                height: height * 0.05,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  // color: Colors.deepPurple,
                ),
                child: Center(
                    child: Text(
                  "Forgot your password?",
                  style:
                      TextStyle(fontSize: height * 0.02, color: Colors.white),
                ))),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
                height: height * 0.05,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  // color: Colors.deepPurple,
                ),
                child: Center(
                    child: Text(
                  "-------------- Or Continue with --------------",
                  style: TextStyle(
                      fontSize: height * 0.02,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                ))),
            SizedBox(height: height * 0.01),
            Container(
              height: height * 0.1,
              width: width * 0.9,
              // color: Colors.deepPurple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: height * 0.06,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text("Google",
                          style: TextStyle(
                              fontSize: height * 0.022,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    height: height * 0.06,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text("Facebook",
                          style: TextStyle(
                              fontSize: height * 0.022,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Center(
              child: Container(
                  height: height * 0.05,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    // color: Colors.deepPurple,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          child: Text(
                        "Need an account?",
                        style: TextStyle(
                            fontSize: height * 0.02, color: Colors.white),
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signup(),
                              ));
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontSize: height * 0.02,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
