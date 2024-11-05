import 'package:flutter/material.dart';
import 'package:saram/chees.dart';
import 'package:saram/fries.dart';
import 'package:saram/navBar.dart';
import 'package:saram/pizza.dart';
import 'package:saram/webface.dart';
import 'package:saram/webtwitter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      backgroundColor: Color(0xfff8ecae6),
      appBar: AppBar(
        elevation: 10,
        title: Row(children: [
          Text(
            'Wow Pizza',
            style: TextStyle(fontSize: 25.0),
          ),
          SizedBox(
            width: 70,
          ),
          Container(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context)=>Webface()));
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('images/wh.png'),
                  ))),
          Container(
            child: GestureDetector(
              onTap: () {
                 Navigator.push(
                        context, MaterialPageRoute(builder: (context)=>Webtwitter()));
              },
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('images/go.png'),
              ),
            ),
          ),
        ]),
        shadowColor: Color(0xffb1a7a6), // shadow appBarka ku jiro waye
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 22),
            child: Row(
              children: [
                SizedBox(
                  height: 22,
                ),
                Padding(padding: EdgeInsets.only(left: 10.0, top: 15)),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mypizza()));
                  },
                  child: Text('Vegeable Pizza',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 10)),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mycheese()));
                  },
                  child: Text('Cheese Pizza',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 10)),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => myfries()));
                  },
                  child: Text('fries',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 10)),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Image.asset('images/bar.png'),
                Text(
                  "Hi, I'm the Pizza Assistant, what can I help you order?",
                  style: TextStyle(fontSize: 30.0),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      Icon(
                        Icons.car_crash_outlined,
                        color: Color(0xffd8315b),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Free Delivery',
                        style: TextStyle(color: Color(0xffd8315b)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
