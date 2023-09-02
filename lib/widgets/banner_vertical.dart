import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/model/articleApi.dart';

class BannerVerticalListItems extends StatelessWidget {
  const BannerVerticalListItems(
      {Key? key, required this.onTaps, required this.article})
      : super(key: key);
  final Article article;
  final void Function() onTaps;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTaps,
      child: Container(
        color: Colors.blueGrey,
        margin: const EdgeInsets.only(top: 10),
        height: height * .28,
        child: Column(
          children: [
            Container(
              width: width,
              height: height * .2,
              decoration: BoxDecoration(
                color: Colors.pink,
                // image: DecorationImage(image: article.image,fit: BoxFit.fitWidth),
                borderRadius: BorderRadius.circular(10),
              ),
              child:article.image !=null? Image.network(article.image!, fit: BoxFit.fill,
              ):Image.asset('assets/sport2.jpeg',fit: BoxFit.fitWidth,)
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                article.title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22, color: Colors.white),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
