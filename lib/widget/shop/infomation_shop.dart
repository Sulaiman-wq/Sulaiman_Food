import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sulaimanfood/model/infomationShop_model.dart';
import 'package:sulaimanfood/model/user_model.dart';
import 'package:sulaimanfood/screens/shop/add_info_shop.dart';
import 'package:sulaimanfood/screens/shop/edit_info_shop.dart';
import 'package:sulaimanfood/utility/myConstant.dart';
import 'package:sulaimanfood/utility/my_style.dart';

class InfomationShop extends StatefulWidget {
  @override
  _InfomationShopState createState() => _InfomationShopState();
}

String nameShop, address, phone, urlImage, shopId;

class _InfomationShopState extends State<InfomationShop> {
  UserModel userModel;
  InfomationShopModel infomationShop;
  @override
  void initState() {
    super.initState();
    readCurrentData();

    // readDataInfomation();
  }

  Future<Null> readCurrentData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String userid = preferences.getString('User_id');

    String url =
        '${MyConstant().domain}/Sulaiman_food/get_infomation.php?isAdd=true&id=$userid';
    Response response = await Dio().get(url);
    //  print('response ==> $response');

    var result = json.decode(response.data);
    // print('response ==> $result');

    for (var map in result) {
      setState(() {
        infomationShop = InfomationShopModel.fromJson(map);
        shopId = infomationShop.shopId;
        nameShop = infomationShop.nameShop;
        address = infomationShop.addressShop;
        phone = infomationShop.phoneShop;
        urlImage = infomationShop.urlImage;
      });
      addSharedShopid();
    }
  }

  //   Future<Null> readDataInfomation() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   String userid = preferences.getString('User_id');

  //   String url =
  //       '${MyConstant().domain}/Sulaiman_food/get_infomation.php?isAdd=true&id=$userid';
  //   await Dio().get(url).then((value) {
  //     var result = json.decode(value.data);
  //     print('value = $result');
  //     for (var map in result) {
  //       setState(() {
  //       infomationShop = InfomationShopModel.fromJson(map);
  //       nameShop = infomationShop.nameShop;
  //       address = infomationShop.addressShop;
  //       phone = infomationShop.phoneShop;
  //       urlImage = infomationShop.urlImage;
  //       });
  //     //  print('nameShop = ${infomationShop.nameShop}');
  //       addSharedSopid();

  //       if (infomationShop.nameShop.isEmpty) {
  //       } else {}
  //     }
  //   });
  // }

  Future<Null> addSharedShopid() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('Shop_id', infomationShop.shopId);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Stack(
        children: [
          //   showdata(context),

          infomationShop == null
              ? MyStyle().showProgress()
              : shopId == 'null' || shopId.isEmpty
                  ? showNodata(context)
                  : showifoShop(),
          //refresh(),
          addAndEditButton(),
        ],
      ),
    );
  }

  buildPrint() => print(userModel.shopId);

  // Center refresh() {
  //   return Center(
  //     child: RefreshIndicator(
  //         onRefresh: () async {
  //           //my refresh method
  //         },
  //         child: CustomScrollView(
  //             slivers: [SliverFillRemaining(child: InfomationShop())])),
  //   );
  // }

  Widget showifoShop() => ListView(
        children: [
          MyStyle().mySizebox(),
          MyStyle().mySizebox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyStyle().showTitle('รายละเอียดร้าน'),
            ],
          ),
          MyStyle().mySizebox(),
          showImage(),
          MyStyle().mySizebox(),
          Container(
            margin: EdgeInsetsDirectional.only(start: 10.0, end: 10.0),
            child: MyStyle().showTitle_2('ร้าน ${infomationShop.nameShop}'),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(
              start: 10.0,
              end: 10.0,
            ),
            child: Row(
              children: [
                MyStyle().showTitle_2('โทร. '),
                Container(
                    margin: EdgeInsetsDirectional.only(top: 7.0),
                    child: Text(phone)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(start: 10.0, end: 10.0),
            child: Row(
              children: [
                MyStyle().showTitleH2('ที่อยู่'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(start: 10.0, end: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    infomationShop.addressShop,
                  ),
                ),
              ],
            ),
          ),
          MyStyle().mySizebox(),
          MyStyle().mySizebox(),
          showMap(),
        ],
      );

  Container showImage() {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 10.0, end: 10),
      // width: 380.00,
      // height: 300.00,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: CachedNetworkImage(
          imageUrl: '${MyConstant().domain}$urlImage',
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              MyStyle().showProgress(),
          errorWidget: (context, url, error) => Icon(Icons.error),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(5),
      ),
    );
  }

  Set<Marker> shopMarker() {
    return <Marker>[
      Marker(
        markerId: MarkerId('shopId'),
        position: LatLng(
          double.parse(infomationShop.latitude),
          double.parse(infomationShop.longitude),
        ),
        infoWindow: InfoWindow(
            title: 'ตำแหน่งร้านของคุณ',
            snippet:
                'ละติจูด = ${infomationShop.latitude}, ลองจิจูด = ${infomationShop.longitude}'),
      )
    ].toSet();
  }

  Widget showMap() {
    double latitude = double.parse(infomationShop.latitude);
    double longitude = double.parse(infomationShop.longitude);

    LatLng latLng = LatLng(latitude, longitude);
    CameraPosition position = CameraPosition(target: latLng, zoom: 16.0);

    return Container(
      padding: EdgeInsets.all(10.0),
      height: 300.0,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: GoogleMap(
          initialCameraPosition: position,
          mapType: MapType.normal,
          onMapCreated: (controller) {},
          markers: shopMarker(),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(5.0),
      ),
    );
  }

  Widget showNodata(BuildContext context) => Center(
        child: Text(
          'ยังไม่มีข้อมูลร้านค้าของคุณ',
          style: TextStyle(fontSize: 20.0),
        ),
      );

  // Widget showdata(BuildContext context) {
  //   if (infomationShop == null) {
  //     MyStyle().showProgress();
  //     if (infomationShop.nameShop == null || infomationShop.nameShop.isEmpty) {
  //       //  showNodata(context);
  //       MyStyle().titleCenter(context, 'ยังไม่มีข้อมูลร้านค้าของคุณ');
  //     } else {
  //       Text('มีข้อมูลอยู่แล้ว');
  //     }
  //   } else {}
  // }

  Row addAndEditButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(right: 25.0, bottom: 25.0),
              child: FloatingActionButton(
                  child: Icon(Icons.edit),
                  onPressed: () {
                    routeAddInfomation();
                  }),
            ),
          ],
        ),
      ],
    );
  }

  void routeAddInfomation() {
    Widget widget =
        shopId == 'null' || shopId.isEmpty ? AddInfoShop() : EditInfoShop();

    MaterialPageRoute route = MaterialPageRoute(
      builder: (value) => widget,
    );
    Navigator.push(context, route).then((value) => readCurrentData());
  }
}
