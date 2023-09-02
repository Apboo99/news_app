import 'package:dio/dio.dart';
import '../model/articleApi.dart';

Future<List<Article>> getNews(String category) async{
    Dio dio = Dio();

      var result = await dio.get
        ("https://newsdata.io/api/1/news?apikey=pub_28622e6c153bc827375d0d1815738f5ab81f4&category=$category&country=au");
      Map<String,dynamic> jsonData = result.data;
      List<dynamic> getArticles = jsonData['results'];
      List<Article> art =[
      ];
      for( var article in getArticles){
        Article artF = Article(image:article['image_url'], title:article['title'], link: article['link'] );
        art.add(artF);
      }
      return art;
    }



