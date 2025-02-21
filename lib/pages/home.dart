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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 8,
              child: Container(
                margin: EdgeInsets.all(width*0.04),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: width*0.01, horizontal: width*0.07),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xffc670fe),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      ),
                    ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: width*0.01, horizontal: width*0.07),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xffba53fd),
                      ),
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xfff8e7f6),
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Color(0xff4b164c), size: 50,), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search, color: Color(0xff4b164c), size: 50), label: 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.shop, color: Color(0xff4b164c), size: 50,), label: 'shop'),
          ],
      ),
    );
  }
}
