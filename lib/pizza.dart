
import 'package:flutter/material.dart';
import 'package:saram/chees.dart';
import 'package:saram/fries.dart';

class mypizza extends StatelessWidget {
  const mypizza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onTap: () {},
              child: CircleAvatar(
                radius: 15,
                backgroundImage:AssetImage('images/wh.png') ,
              )
          )
          ),
          Container(
            child: GestureDetector(
              onTap: () {},
              child:  CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('images/go.png'),

              ),
            ),
          ),
        ]),
         shadowColor: Color(0xffb1a7a6), // shadow appBrka ku jiro waye
      ),
        body: Column(children: [
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
            margin: EdgeInsets.only(top: 85),
            child: Column(
              children: [
                Image.asset('images/v.png'),
                SizedBox(
                  height: 200,
                ),
                Text('pizza.dart')
              ],
            ),
          ),
        ]));
  }
}
