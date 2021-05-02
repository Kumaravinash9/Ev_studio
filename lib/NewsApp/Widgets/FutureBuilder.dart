import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:start/NewsApp/Jsons/Json.dart';
import 'ListView.dart';

Widget app(Future<Allnews> data) {
  return FutureBuilder(
      future: data,
      builder: (context, AsyncSnapshot<Allnews> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data.news.length,
              itemBuilder: (context, index) {
                return content(snapshot.data.news[index], context);
              });
        }

        return CircularProgressIndicator();
      });
}
