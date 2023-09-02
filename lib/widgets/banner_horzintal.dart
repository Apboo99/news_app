import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/views/categories_details.dart';
import '../model/models.dart';


class BannerListItems extends StatelessWidget {
   const BannerListItems({Key? key, required this.imageBannerWithText}) : super(key: key);
   final ImageBannerWithText imageBannerWithText;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return  CategoryBanner(imageBannerWithText: imageBannerWithText, category: imageBannerWithText.text,);
        }));
      },
      child: Container(
            margin: const EdgeInsets.only(right: 10),
            width: width*.6,
            decoration: BoxDecoration(
              image: DecorationImage(image: imageBannerWithText.image,fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
            ),
            child:Center(child: Text(imageBannerWithText.text,style: const TextStyle(fontSize: 25,color: Colors.white))),
          ),
    );

  }
}
