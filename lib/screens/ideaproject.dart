import 'package:untitled4/screens/ideaproject.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xfff8f8f8),
        title: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff746bc9),
            size: 35,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 27),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About",
              style: TextStyle(
                fontSize: 40,
                color: Color(0xff746bc9),
              ),
            ),
            Image(
              image: AssetImage("images/about.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 280,
              width: 360,
              child: Wrap(
                children: [
                  Text(
                    "This App You Can Buy Dress Shirt Shoes Pant And Tie And Many Other Product In Cheap Price, Now Its Time Buy SomeThing",
                    style: TextStyle(fontSize: 22, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
