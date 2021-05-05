import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sulaimanfood/model/foodMenu_Model.dart';
import 'package:sulaimanfood/screens/food_menu.dart';
import 'package:sulaimanfood/screens/home.dart';
import 'package:sulaimanfood/utility/myConstant.dart';
import 'package:sulaimanfood/utility/my_style.dart';
import 'package:sulaimanfood/utility/signout_process.dart';

class MainUser extends StatefulWidget {
  @override
  _MainUserState createState() => _MainUserState();
}

class _MainUserState extends State<MainUser> {
  String nameUser;
  String userid;
  // ignore: deprecated_member_use
  List<FoodMenuModel> foodMenuModels = List();
  // ignore: deprecated_member_use
  List<Widget> foodCards = List();

  @override
  void initState() {
    super.initState();
    findUser();
    readfood();
  }

  Future<Null> readfood() async {
    String url =
        '${MyConstant().domain}/Sulaiman_food/get_Menu_forUser.php?isAdd=true';
    await Dio().get(url).then((value) {
      print('Value == $value');
      var result = json.decode(value.data);
      int index = 0;
      print('Value == $result');
      for (var map in result) {
        FoodMenuModel model = FoodMenuModel.fromJson(map);
        print('NameShop == ${model.foodId}');
        setState(() {
          foodMenuModels.add(model);
          foodCards.add(createCard(model, index));
          index++;
        });
      }
    });
  }

  Future<Null> findUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      nameUser = preferences.getString('Name');
      userid = preferences.getString('User_id');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(nameUser == null ? 'Main User' : 'ยินดีต้อนรับคุณ$nameUser'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                signOutProcess(context);
                routeToHome();
              })
        ],
      ),
      drawer: showDrawer(),
      body: foodCards.length == 0
          ? MyStyle().showProgress()
          : GridView.extent(
              maxCrossAxisExtent: 240,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: foodCards,
            ),
    );
  }

  void routeToHome() {
    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => Home(),
    );
    Navigator.pushAndRemoveUntil(context, route, (route) => false);
  }

  Drawer showDrawer() => Drawer(
        child: ListView(
          children: <Widget>[
            showHeadDrawer(),
            signOutMenu(),
          ],
        ),
      );

  ListTile signOutMenu() {
    return ListTile(
      leading: Icon(Icons.logout),
      title: Text('Sign Out'),
      onTap: () {
        signOutProcess(context);
        // Navigator.pop(context);
        // MaterialPageRoute route = MaterialPageRoute(builder: (value) => Home());
        // Navigator.pushAndRemoveUntil(context, route, (route) => false);
      },
    );
  }

  UserAccountsDrawerHeader showHeadDrawer() {
    return UserAccountsDrawerHeader(
        decoration: MyStyle().myBoxDecoration('food_user.jpg'),
        currentAccountPicture: MyStyle().showlogo(),
        accountName: Text(
          'Name',
          style: TextStyle(
              color: MyStyle().darkColor,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        accountEmail: Text(
          'Login',
          style: TextStyle(color: Colors.black54),
        ));
  }

  Widget createCard(FoodMenuModel foodMenuModel, int index) {
    return GestureDetector(
      onTap: () {
        print('you click index $index');
        MaterialPageRoute route = MaterialPageRoute(
          builder: (context) => FoodMenu(
            foodMenuModel: foodMenuModels[index],
          ),
        );Navigator.push(context, route);
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //  margin: EdgeInsets.only(bottom: 15),
              //  width: 160,
              height: 160,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: CachedNetworkImage(
                  imageUrl: '${MyConstant().domain}${foodMenuModel.imagePath}',
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      MyStyle().showProgress(),
                  // CircularProgressIndicator(
                  //     ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                // CircleAvatar(
                //   backgroundImage: NetworkImage(
                //       '${MyConstant().domain}${foodMenuModel.imagePath}'),
                // ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyStyle().showTitleH3(foodMenuModel.foodName),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('ร้าน ${foodMenuModel.shopName}'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
