import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/model/models.dart';
import 'package:news_app_ui_setup/views/hot_news.dart';
import '../model/articleApi.dart';
import '../services/new_serves.dart';

class HotNewsBuilder extends StatefulWidget {
  const HotNewsBuilder({super.key, required this.category});
final String category;
  @override
  State<HotNewsBuilder> createState() => _HotNewsBuilderState();
}
 Future<List<Article>>?future;
class _HotNewsBuilderState extends State<HotNewsBuilder> {

  @override
  void initState() {
    future= getNews(widget.category);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HotNews(list: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: height * .3),
                child: const Text(
                  "Oops, there was an error!",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          );
        } else{
          return SliverToBoxAdapter(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: height * .3),
                child: const CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 6,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
