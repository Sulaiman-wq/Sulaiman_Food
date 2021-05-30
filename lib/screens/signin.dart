import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sulaimanfood/model/user_model.dart';
import 'package:sulaimanfood/screens/main_rider.dart';
import 'package:sulaimanfood/screens/shop/main_shop.dart';
import 'package:sulaimanfood/screens/user/main_user.dart';
import 'package:sulaimanfood/utility/myConstant.dart';
import 'package:sulaimanfood/utility/my_style.dart';
import 'package:sulaimanfood/utility/normal_dialog.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String user, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[Colors.white, MyStyle().primaryColor],
            center: Alignment(0, -0.3),
            radius: 1.0,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                MyStyle().showlogo(),
                MyStyle().mySizebox(),
                MyStyle().showTitle('Sulaiman Food'),
                MyStyle().mySizebox(),
                userForm(),
                MyStyle().mySizebox(),
                passwordForm(),
                MyStyle().mySizebox(),
                loginButton(),
                MyStyle().mySizebox(),
                MyStyle().mySizebox(),
                MyStyle().mySizebox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton() => Container(
        width: 300.0,
        child: RaisedButton(
          color: MyStyle().darkColor,
          onPressed: () {
            MyStyle().showProgress2('กรุณารอสักครู่...');
            if (user == null ||
                user.isEmpty ||
                password == null ||
                password.isEmpty) {
              normalDialog(context, 'กรุณากรอกข้อมูลให้ครบค่ะ');
            } else {
              MyStyle().showProgress2('กรุณารอสักครู่...');
              checkAuthen();
            }
          },
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  Future<Null> checkAuthen() async {
    String url =
        '${MyConstant().domain}/Sulaiman_food/getUserWhereUser.php?isAdd=true&user=$user';
    try {
      Response response = await Dio().get(url);
      print('res = $response');
      if (response.toString() != 'null') {
        var result = json.decode(response.data);
        print('result = $result');
        for (var map in result) {
          UserModel userModel = UserModel.fromJson(map);
          if (password == userModel.password) {
            String chooseType = userModel.chooseType;
            if (chooseType == 'User') {
              routeToService(MainUser(), userModel);
            } else if (chooseType == 'Shop') {
              routeToService(MainShop(), userModel);
            } else if (chooseType == 'Rider') {
              routeToService(MainRider(), userModel);
            } else {
              normalDialog(context, 'ไม่พบประเภพของสมาชิก กรุณาลองอีกครั้งค่ะ');
            }
          } else {
            normalDialog(context, 'รหัสผ่านผิด กรุณาลองใหม่');
          }
        }
      } else {
        normalDialog(context, 'ไม่พบ User Name');
      }
    } catch (e) {
      normalDialog(context, 'เชื่อมต่อเซอร์เวอร์ล้มเหลว $e');
    }
  }

  Future<void> routeToService(Widget myWidget, UserModel userModel) async {
    FirebaseMessaging _messaging = FirebaseMessaging.instance;
    String token = await _messaging.getToken();
    print('token >>>>>>>>>>>> $token');

    //REGISTER REQUIRED FOR IOS
    if (Platform.isIOS) {
      _messaging.requestPermission();
    }

    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('User_id', userModel.userId);
    preferences.setString('ChooseType', userModel.chooseType);
    preferences.setString('User', userModel.user);
    preferences.setString('Name', userModel.name);
    if (userModel.userId != null && userModel.userId.isNotEmpty) {
      String url =
          '${MyConstant().domain}/Sulaiman_food/edit_token.php?isAdd=true&Token=$token&userid=${userModel.userId}';
      await Dio().get(url).then((value) => print('อัพเดท Token เรียบร้อย'));
    }

    if (userModel.shopId == null || userModel.shopId.isEmpty) {
      MaterialPageRoute route = MaterialPageRoute(
        builder: (context) => myWidget,
      );
      Navigator.pushAndRemoveUntil(context, route, (route) => false);
    } else {
      preferences.setString('Shop_id', userModel.shopId);
      MaterialPageRoute route = MaterialPageRoute(
        builder: (context) => myWidget,
      );
      Navigator.pushAndRemoveUntil(context, route, (route) => false);
    }
  }

  Widget userForm() => Container(
        width: 300.0,
        child: TextField(
          onChanged: (value) => user = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_box,
              color: MyStyle().darkColor,
            ),
            labelStyle: TextStyle(color: MyStyle().darkColor),
            labelText: 'User : ',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().darkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().primaryColor)),
          ),
        ),
      );

  Widget passwordForm() => Container(
        width: 300.0,
        child: TextField(
          onChanged: (value) => password = value.trim(),
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: MyStyle().darkColor,
            ),
            labelStyle: TextStyle(color: MyStyle().darkColor),
            labelText: 'Password : ',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().darkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().primaryColor)),
          ),
        ),
      );
}
