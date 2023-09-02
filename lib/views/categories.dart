import 'package:flutter/material.dart';
import '../consts/const.dart';
import '../widgets/banner_horzintal.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: height * .15,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: bannerList1.length,
          itemBuilder: (context, index) {
            return BannerListItems(
              imageBannerWithText: bannerList1[index],
            );
          },
        ),
      ),
    );
  }
}
