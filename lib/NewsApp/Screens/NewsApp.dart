import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:start/NewsApp/Jsons/Network.dart';
import '../Jsons/Json.dart';
import '../Widgets/FutureBuilder.dart';

class NewsApp extends StatefulWidget {
  @override
  _NewsAppState createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  Future<Allnews> api;
  var _timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    api = new Network("https://hubblesite.org/api/v3/news").getData();
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NewsApp",
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade400,
      ),
      body: Center(
        child: app(api),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.refresh_rounded),
      ),
    );
  }
}
