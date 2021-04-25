import 'package:anime_tracker/utility/app_colors.dart';
import 'package:anime_tracker/utility/widget/costume_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.scaffoldBg,
      child: SafeArea(
        child: Scaffold(
          appBar: CostumeAppBar(),
          body: Container(
            //Search bar
            child: Column(
              children: [
                _searchTextEditWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _searchTextEditWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.3),
            offset: Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 1,
          )
        ],
      ),
      child: TextField(
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.search,
              size: 30,
            )),
      ),
    );
  }
}
