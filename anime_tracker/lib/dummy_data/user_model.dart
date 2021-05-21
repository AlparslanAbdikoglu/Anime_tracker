import 'package:anime_tracker/utility/app_assets.dart';

class UserModel {
  final String name;
  final String profileImage;
  final String helyszin;
  final String status;
  final String description;
  final List<String> couponList;

  UserModel(
      {this.name,
      this.helyszin,
      this.profileImage,
      this.status,
      this.description,
      this.couponList});
}

List<UserModel> recentUserList = [
  UserModel(
      name: "Tesco",
      profileImage: AppAssets.tesco,
      helyszin: "Budapesti",
      status: "kapcsolat létrejött",
      description:
          "Tesco Magyarország válassz kedvedre az elérhető termékekből, aktuális kedvezményekért keresd a coupon menüpontot.",
      couponList: [
        "https://assets.materialup.com/uploads/9692f804-45f2-4ea9-a072-1628e31772b1/teaser.png",
        "https://assets.materialup.com/uploads/0e856001-f261-472d-9c6e-470132fff443/teaser.png",
        "https://assets.materialup.com/uploads/750ee922-a9fc-4d32-ab66-33b52fc24529/teaser.png",
        "https://assets.materialup.com/uploads/2807278f-7d89-4953-9505-bf43e2803d31/teaser.png",
      ]),
  UserModel(
      name: "Ana Johnson",
      profileImage: AppAssets.aldi,
      helyszin: "Budapesti X ker",
      status: "Kapcsolat létre jött",
      description:
          "Aldi Magyarország válassz kedvedre az elérhető termékekből, aktuális kedvezményekért keresd a coupon menüpontot. ",
      couponList: [
        "https://assets.materialup.com/uploads/4911d91f-c46c-4759-8c95-5bcd7104c97c/teaser.png",
        "https://assets.materialup.com/uploads/278c6e13-3378-419b-b1cb-4dcfe4b5cc2b/teaser.png",
        "https://assets.materialup.com/uploads/c0a73c67-58a8-465e-b2a5-e21a13f1a688/teaser.png",
        "https://assets.materialup.com/uploads/83c314aa-6f2e-4956-8492-28d03348e8ad/teaser.png",
      ]),
];
