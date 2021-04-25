import 'package:anime_tracker/utility/app_assets.dart';
import 'package:flutter/material.dart';

class CostumeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CostumeAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //AppIcon
          Icon(
            Icons.menu,
            size: 40,
          ),
          Text(
            "Cashier Basket",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          //User Image
          SizedBox(
            height: 60,
            width: 60,
            child: CircleAvatar(
                backgroundImage: Image.asset(AppAssets.heartIcon).image),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
