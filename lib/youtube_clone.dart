
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class YoutubeClone extends StatefulWidget {
  const YoutubeClone({Key? key}) : super(key: key);

  @override
  _YoutubeCloneState createState() => _YoutubeCloneState();
}

class _YoutubeCloneState extends State<YoutubeClone> {
  @override
  Widget build(BuildContext context) {
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
            mainAxisAlignment: MainAxisAlignment.center,
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
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 40.0,
                      width: 575,
                      child: const TextField(
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
                              borderSide: BorderSide(
                                  color: Colors.black26, width: 01.0),
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
                    DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.black12.withOpacity(0.03)
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
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.black12.withOpacity(0.03)
                      ),
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
