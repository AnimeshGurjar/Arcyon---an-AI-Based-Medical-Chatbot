import 'package:http/http.dart' as http;
import 'package:arcyon_healthbot/models/article.dart';
import 'dart:convert';

import 'package:arcyon_healthbot/secret.dart';

class News {
  List<Article> news = [];

  Future<void> getNews() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=in&excludeDomains=stackoverflow.com&sortBy=publishedAt&language=en&category=health&apiKey=${apiKey}";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          Article article = Article(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"],
            articleUrl: element["url"],
          );
          news.add(article);
        }
      });
    }
  }
}

class NewsForCategorie {
  List<Article> news = [];

  Future<void> getNewsForCategory(String category) async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=us&category=health&language=en&apiKey=${apiKey}";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          Article article = Article(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"],
            articleUrl: element["url"],
          );
          news.add(article);
        }
      });
    }
  }
}