import 'package:flutter/material.dart';

import '../model/articleApi.dart';
import '../widgets/banner_vertical.dart';


class HotNews extends StatelessWidget {
 final List<Article> list;

  const HotNews({super.key, required this.list});


  @override
  Widget build(BuildContext context) {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: list.length,
          (context, index) {
            return BannerVerticalListItems(
              article: list[index],
              onTaps: () {},
            );
          },
        ),
      );
    }
  }

