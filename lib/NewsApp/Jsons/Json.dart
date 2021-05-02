class News {
  String newsId;
  String name;
  String url;

  News({this.newsId, this.name, this.url});

  News.fromJson(Map<String, dynamic> json) {
    newsId = json['news_id'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['news_id'] = this.newsId;
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

class Allnews {
  List<News> news;
  Allnews({this.news});
  Allnews.fromJson(List<dynamic> json) {
    news = new List<News>();
    json.forEach((v) {
      news.add(new News.fromJson(v));
    });
  }
}
