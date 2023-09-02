import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/model/models.dart';
import 'package:news_app_ui_setup/services/new_serves.dart';

import '../widgets/hot_news_builder.dart';

class CategoryBanner extends StatefulWidget {
 final ImageBannerWithText imageBannerWithText;
 final String category;
    const CategoryBanner({Key? key, required this.imageBannerWithText, required this.category}) : super(key: key);
  @override
  State<CategoryBanner> createState() => _CategoryBannerState();
}

class _CategoryBannerState extends State<CategoryBanner> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
      return   Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
    scrollDirection: Axis.vertical,
    slivers: [
    HotNewsBuilder(category: widget.category),
    ],
    ),
      );

  }
}

