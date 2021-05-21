import 'package:anime_tracker/utility/app_assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// AppIcon
          Icon(
            Icons.menu,
            size: 40,
          ),
          Text(
            "Cashier Basket -Smart Shopping",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),

          /// User image
          SizedBox(
            height: 50,
            width: 50,
            child: CircleAvatar(
              backgroundImage: Image.asset(AppAssets.logo).image,
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(
        36,
      );
}
