import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app_c8_v3/model/NewsResponse.dart';
import 'package:news_app_c8_v3/model/SourceResponse.dart';
class ApiManager{
  //https://newsapi.org/v2/top-headlines/sources?apiKey=d6ea3f5de6634dceb4a825a6be04801b

  static String baseUrl = 'newsapi.org';
  static String apiKey = 'd6ea3f5de6634dceb4a825a6be04801b';
  static Future<SourceResponse>getSources(String categoryId)async{
    var url = Uri.https(baseUrl, '/v2/top-headlines/sources', {
      'apiKey': apiKey,
      'category': categoryId
    });
    try{
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var sourceResponse = SourceResponse.fromJson(json);
      return sourceResponse;
    }catch(e){
      throw e;
    }

  }


  static Future<NewsResponse> getNews(String sourceId)async{
    //https://newsapi.org/v2/everything?q=bitcoin&apiKey=d6ea3f5de6634dceb4a825a6be04801b
    var url = Uri.https(baseUrl, '/v2/everything', {
      'apiKey': apiKey,
      'sources': sourceId,
    });
    try{
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var newsResponse = NewsResponse.fromJson(json);
      return newsResponse;
    }catch(e){
      throw e;
    }

  }
}