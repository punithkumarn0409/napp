import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(height*0.08),
          child: Center(
              child: Container(
                  margin: EdgeInsets.only(top: height*0.05),
                  child: Image.asset('assets/images/mauve_logo.png'),
              ),
          ),
      ),
      backgroundColor: Color(0xfff8e7f6), //Scaffold BG Color
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3,
                  child: Card(
                    elevation: 0,
                    margin: EdgeInsets.symmetric(horizontal: width*0.02),
                    color: Colors.deepPurple,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              margin: EdgeInsets.only(left: width*0.02),
                              child: Center(
                                child: Text('Preferences',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: width*0.01),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text('Age',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 18,
                                ),),
                              ),
                          ),
                          ),
                          Expanded(
                            flex:6,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: width*0.01),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text('Location',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                  ),),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              margin: EdgeInsets.only(left: width*0.01, right: width*0.02),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text('Gender',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                  ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ),
              Expanded(
                flex: 27,
                child: Container(
                  margin: EdgeInsets.all(width*0.04),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: width*0.01, horizontal: width*0.07),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffc670fe),
                        ),
                      child: Center(
                      child: Row(
                      children: [
                      Container(
                      margin: EdgeInsets.only(left:18),
                        width: 40,
                        child: Image.asset('assets/images/cross-small.png', color: Colors.white)
                    ),
                    Container(
                      margin: EdgeInsets.only(left:3),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ]
                ),
              ),
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        ),
                      ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: width*0.01, horizontal: width*0.07),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              colors: [
                                Color(0xff9b00ff),
                                Color(0xffba53fd)
                              ],
                          ),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left:30),
                                width: 30,
                                  child: Image.asset('assets/images/star.png', color: Colors.white)
                                ),
                              Container(
                                margin: EdgeInsets.only(left:9),
                                child: Text(
                                  'Match',
                                   style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                                            ),
                              ),
                          ]
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff320053),
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  width: 35,
                  margin: EdgeInsets.only(top: 13),
                  child: Image.asset(
                    'assets/images/user.png',
                    color: Colors.white,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  width: 35,
                  margin: EdgeInsets.only(top: 13),
                  child: Image.asset(
                    'assets/images/heart.png',
                    color: Colors.white,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  width: 35,
                  margin: EdgeInsets.only(top: 13),
                  child: Image.asset(
                    'assets/images/message.png',
                    color: Colors.white,
                  ),
                ),
                label: ''),
          ],
      ),
    );
  }
}
