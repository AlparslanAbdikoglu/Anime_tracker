import 'package:flutter/material.dart';
import 'package:anime_tracker/utility/app_assets.dart';
import 'package:anime_tracker/utility/app_colors.dart';
import 'package:anime_tracker/utility/widget/costume_appbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get userList => null;

  @override
  Widget build(BuildContext context) {
    var safeArea = SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: CustomAppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.yellow,
          child: Icon(
            Icons.add,
            color: AppColors.black,
            size: 35,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          elevation: 10,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _bottomMenuIcon(AppAssets.menuIcon, isSelected: true),
              _bottomMenuIcon(AppAssets.heartIcon),
              Container(
                height: 0,
              ),
              _bottomMenuIcon(AppAssets.notificationIcon),
              _bottomMenuIcon(AppAssets.settingsIcon),
            ],
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: CircularNotchedRectangle(),
          /*shape: AutomaticNotchedShape(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),*/
          notchMargin: 12,
          color: AppColors.black,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Search Edit Text
              _searchTextEditWidget(),
            ],
          ),
        ),
      ),
    );
    return Container(color: AppColors.scaffoldBg, child: safeArea);
  }

  Widget _bottomMenuIcon(String imageIcon, {isSelected = false}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? AppColors.yellow : Colors.transparent,
            ),
            height: 10,
            width: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            imageIcon,
            height: 35,
            color: AppColors.white,
          )
        ],
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
