import 'dart:async';

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class YoutubeClone extends StatefulWidget {
  const YoutubeClone({Key? key}) : super(key: key);

  @override
  _YoutubeCloneState createState() => _YoutubeCloneState();
}

class _YoutubeCloneState extends State<YoutubeClone> {
  bool menuExpand = true;
  bool menuExpandScreenEnable = true;

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;

    var smallScreen = currentWidth > 1175;
    var extraSmallScreen = currentWidth > 1025;
    var tabScreen = currentWidth > 769;

    var resTextField = currentWidth > 1170;
    var logoWidth = currentWidth > 875;
    var hideTextFiled = currentWidth > 657;
    var hideMenu = currentWidth > 805;
    var resTextFieldWidth = currentWidth - 1170;

    var expandedWidth = menuExpand ? 240.0 : 72.0;
    var menuExpandScreen = currentWidth > 1330;
    menuExpandScreenEnable
        ? Timer.run(() {
            setState(() {
              menuExpandScreenEnable
                  ? menuExpand = menuExpandScreen ? true : false
                  : true;
            });
          })
        : Container();

    var resButtonContainer = menuExpand
        ? 240.0
        : currentWidth > 800
            ? 72.0
            : 0;
    var resButtonList = currentWidth > 800 ? 140.0 : 72.0;

    var gridPaddingLarge = currentWidth > 1790;
    var paddingWidth = 1920 - currentWidth;
    var resPaddingWidth = paddingWidth / 1.1;
    var remPaddingWidth = 80 - resPaddingWidth;
    var gridPaddingSmall = remPaddingWidth > 30 ? remPaddingWidth : 30;
    var gridPaddingExSmall = currentWidth > 650;

    return Scaffold(
      backgroundColor: Colors.black12.withOpacity(0.04),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: AppBar(
          elevation: 0.0,
          titleSpacing: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 5),
                    child: const Icon(
                      FeatherIcons.menu,
                      size: 22,
                      color: Colors.black54,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset(
                      "assets/images/YouTube-Logo.png",
                      height: 50,
                    ),
                  ),
                  Container(
                    height: 30,
                    margin: const EdgeInsets.only(left: 5),
                    child: const Text(
                      "LK",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.black54,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 40.0,
                    width: 575,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: 13,
                            bottom: 10,
                          ),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(02.0),
                              bottomLeft: Radius.circular(02.0),
                              bottomRight: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(02.0),
                              bottomLeft: Radius.circular(02.0),
                              bottomRight: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                            borderSide:
                                BorderSide(color: Colors.black26, width: 01.0),
                          ),
                          hintStyle: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Roboto-Medium',
                              fontSize: 16.0),
                          hintText: "Search"),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "Search",
                    child: InkWell(
                      onTap: () {},
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(2.0),
                            bottomRight: Radius.circular(2.0),
                          ),
                        ),
                        child: Container(
                          height: 40.0,
                          width: 62.0,
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 15.0,
                            bottom: 2.0,
                          ),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.search_outlined,
                            color: Colors.black,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                  ),
                  Tooltip(
                    message: "Search with your voice",
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50.0),
                      highlightColor: Colors.black12.withOpacity(0.02),
                      onTap: () {},
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.black12.withOpacity(0.03)),
                        child: Container(
                          height: 42.0,
                          width: 42.0,
                          padding: const EdgeInsets.only(
                            left: 08.0,
                            top: 4.0,
                            right: 08.0,
                            bottom: 4.0,
                          ),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.mic,
                            color: Colors.black,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Row(
                  children: [
                    Tooltip(
                      message: "create",
                      child: InkWell(
                          highlightColor: Colors.black12.withOpacity(0.02),
                          borderRadius: BorderRadius.circular(50.0),
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.video_call_outlined,
                              color: Colors.black87,
                            ),
                          )),
                    ),
                    Tooltip(
                      message: "Youtube apps",
                      child: InkWell(
                          highlightColor: Colors.black12.withOpacity(0.02),
                          borderRadius: BorderRadius.circular(50.0),
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.apps_outlined,
                              color: Colors.black87,
                            ),
                          )),
                    ),
                    Tooltip(
                      message: "Notification",
                      child: InkWell(
                          highlightColor: Colors.black12.withOpacity(0.02),
                          borderRadius: BorderRadius.circular(50.0),
                          onTap: () {},
                          child: Container(
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.notifications_outlined,
                                    color: Colors.black87,
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 14,
                                      padding: const EdgeInsets.only(
                                          left: 4, right: 4, top: 2),
                                      child: const Text(
                                        "9+",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.0,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Tooltip(
                      message: "Profile",
                      child: InkWell(
                          highlightColor: Colors.black12.withOpacity(0.02),
                          // borderRadius: BorderRadius.circular(50.0),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: const Image(
                                image: AssetImage(
                                  "assets/images/profile_girl.jpg",
                                ),
                                height: 35.0,
                                width: 35.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Text("Welcomme"),
    );
  }
}
