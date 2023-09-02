import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/consts/const.dart';
import '../widgets/hot_news_builder.dart';
import '../widgets/title_of_hot_news.dart';
import 'categories.dart';

class HomePageUi extends StatelessWidget {
 const HomePageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        slivers: [
          Categories(),
          TitleOfHotNews(),
          HotNewsBuilder(category: 'sports',),
        ],
      ),
    );
  }
}



