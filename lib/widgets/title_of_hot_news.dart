import 'package:flutter/material.dart';

class TitleOfHotNews extends StatelessWidget {
  const TitleOfHotNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const SliverToBoxAdapter(
        child: Text(
          "Hot News",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 25,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
  }

