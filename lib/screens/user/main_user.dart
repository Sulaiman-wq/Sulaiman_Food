import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sulaimanfood/model/foodMenu_Model.dart';
import 'package:sulaimanfood/model/infomationShop_model.dart';
import 'package:sulaimanfood/screens/home.dart';
import 'package:sulaimanfood/screens/user/show_cart.dart';
import 'package:sulaimanfood/utility/my_style.dart';
import 'package:sulaimanfood/utility/signout_process.dart';
import 'package:sulaimanfood/widget/user/show_list_menu_all.dart';
import 'package:sulaimanfood/widget/user/show_list_order_all.dart';
import 'package:sulaimanfood/widget/user/show_list_shop_all.dart';

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
  Widget currentWidget;
  Widget statusAppbar;

  @override
  void initState() {
    super.initState();
    currentWidget = ShowListMenuAll();
    statusAppbar = foodmenuAppbar();
    findUser();
    // readfood();
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
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            actions: [
              MyStyle().iconShowCart(context),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black54,
                ),
                onPressed: () {
                  //Search
                },
              ),
            ],
            title: nameUser == null ? 'Main User' : statusAppbar,
            centerTitle: true,
            floating: true,
            snap: true,
            pinned: true,
            forceElevated: innerBoxIsScrolled,
          )
        ],
        body: Container(
          // color: Colors.lightBlueAccent,
          child: currentWidget,
        ),
      ),
      drawer: showDrawer(),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: nameUser == null ? 'Main User' : statusAppbar,
      // actions: <Widget>[
      //   MyStyle().iconShowCart(context),
      //   IconButton(
      //     icon: Icon(
      //       Icons.search,
      //       color: Colors.black54,
      //     ),
      //     onPressed: () {
      //       signOutProcess(context);
      //       routeToHome();
      //     },
      //     ),
      //     // IconButton(
      //     //   icon: Icon(
      //     //     Icons.exit_to_app,
      //     //     color: Colors.black54,
      //     //   ),
      //     //   onPressed: () {
      //     //     signOutProcess(context);
      //     //     routeToHome();
      //     //   },
      //     // ),
      //   ],
      // ),
      // drawer: showDrawer(),
      // body: Container(
      //   // color: Colors.lightBlueAccent,
      //   child: currentWidget,
      // ),
    );
  }

  Widget foodmenuAppbar() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'เมนูอาหาร',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black87,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      );
  Widget shopAppbar() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ร้านอาหาร',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black87,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      );
  Widget orderAppbar() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ประวัติการสั่งซื้อ',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black87,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      );

  void routeToHome() {
    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => Home(),
    );
    Navigator.pushAndRemoveUntil(context, route, (route) => false);
  }

  Drawer showDrawer() => Drawer(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                showHeadDrawer(),
                list_menu(),
                list_shop(),
                list_order(),
                menuCart(),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                signOutMenu(),
              ],
            ),
          ],
        ),
      );

  // ignore: non_constant_identifier_names
  ListTile list_menu() {
    return ListTile(
      onTap: () {
        Navigator.pop(context);
        setState(() {
          currentWidget = ShowListMenuAll();
          statusAppbar = foodmenuAppbar();
        });
      },
      leading: Icon(Icons.fastfood),
      title: Text(
        'เมนูอาหาร',
        style: TextStyle(fontSize: 18.0),
      ),
      subtitle: Text('เมนูทั้งหมด'),
    );
  }

  // ignore: non_constant_identifier_names
  ListTile list_shop() {
    return ListTile(
      onTap: () {
        Navigator.pop(context);
        setState(() {
          currentWidget = ShowListShopAll();
          statusAppbar = shopAppbar();
        });
      },
      leading: Icon(Icons.home),
      title: Text(
        'ร้านค้าใกล้คุณ',
        style: TextStyle(fontSize: 18.0),
      ),
      subtitle: Text('รายละเอียดร้านค้า'),
    );
  }

  // ignore: non_constant_identifier_names
  ListTile list_order() {
    return ListTile(
      onTap: () {
        Navigator.pop(context);
        setState(() {
          currentWidget = ShowListOrderAll();
          statusAppbar = orderAppbar();
          //  currentWidget = PercentIndicatorDemo();
        });
      },
      leading: Icon(Icons.shopping_basket_rounded),
      title: Text(
        'รายการอาหารที่สั่ง',
        style: TextStyle(fontSize: 18.0),
      ),
      subtitle: Text('รายการสั่งซื้อ'),
    );
  }

  Widget signOutMenu() {
    return Container(
      decoration: BoxDecoration(color: Colors.red.shade600),
      child: ListTile(
        leading: Icon(
          Icons.logout,
          color: Colors.white,
        ),
        title: Text(
          'Sign Out',
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
        subtitle: Text(
          'ออกจากระบบ',
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {
          signOutProcess(context);
        },
      ),
    );
  }

  UserAccountsDrawerHeader showHeadDrawer() {
    return UserAccountsDrawerHeader(
      decoration: MyStyle().myBoxDecoration('food_user.jpg'),
      currentAccountPicture: MyStyle().showlogo(),
      accountName: Text(
        nameUser,
        style: TextStyle(
            color: MyStyle().darkColor,
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      // accountEmail: ListTile(
      //   title: Text('Sign Out'),
      //   onTap: () {
      //     signOutProcess(context);
      //   },
      // ),
      accountEmail: Text(
        'LogOut',
        style: TextStyle(color: Colors.black54),
      ),
    );
  }

  Widget menuCart() {
    return ListTile(
      leading: Icon(Icons.add_shopping_cart),
      title: Text(
        'ตะกร้า',
        style: TextStyle(fontSize: 18.0),
      ),
      subtitle: Text('ตะกร้าของฉัน'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route = MaterialPageRoute(
          builder: (context) => ShowCart(),
        );
        Navigator.push(context, route);
      },
    );
  }
}
