import 'package:flutter/material.dart';
import 'package:saram/webtwitter.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webface extends StatefulWidget {
  const Webface({super.key});

  @override
  State<Webface> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Webface> {
  late final WebViewController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
      ..loadRequest(Uri.parse('https://web.whatsapp.com/'));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xfff8ecae6),
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
                    radius: 22,
                    backgroundImage: AssetImage('images/wh.png'),
                  ))),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Webtwitter()));
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
      body: WebViewWidget(controller: controller),
    );
  }
}
