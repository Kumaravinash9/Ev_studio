import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:start/NewsApp/Jsons/Json.dart';
import 'package:start/NewsApp/Screens/WebView.dart';

Widget content(News news, BuildContext context) {
  return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
          key: ValueKey(news.newsId),
          elevation: 3,
          child: Container(
            margin: EdgeInsets.all(6),
            child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => webview(url: news.url)));
                },
                contentPadding: const EdgeInsets.all(8),
                leading: Icon(
                  Icons.new_releases,
                  color: Colors.red,
                ),
                title: Text(
                  news.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Icon(Icons.exit_to_app)),
          )));
}
