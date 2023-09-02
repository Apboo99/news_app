import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/views/home_ui.dart';
import '../widgets/appbar.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: const HomePageUi(),
    );
  }




}
