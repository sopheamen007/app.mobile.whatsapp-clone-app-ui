import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:whatapp_clone_ui/json/chat_json.dart';
import 'package:whatapp_clone_ui/theme/colors.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: bgColor,
      title: Row(
        children: [
          Text(
            "Privacy",
            style: TextStyle(
                fontSize: 16, color: primary, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Status",
                style: TextStyle(
                    fontSize: 23, color: white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 38,
                decoration: BoxDecoration(
                    color: textfieldColor,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  style: TextStyle(color: white),
                  cursorColor: primary,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(LineIcons.search, color: white.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(
                          color: white.withOpacity(0.3), fontSize: 17)),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(color: textfieldColor),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(profile[0]['img']),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            right: 5,
                            bottom: 0,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: primary),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: white,
                                  size: 18,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "My Status",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Add to my status",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: white.withOpacity(0.5)),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                          color: white.withOpacity(0.1),
                          shape: BoxShape.circle),
                      child: Center(
                        child: Icon(
                          Icons.camera_alt,
                          color: primary,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                          color: white.withOpacity(0.1),
                          shape: BoxShape.circle),
                      child: Center(
                        child: Icon(
                          Icons.edit,
                          color: primary,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(color: textfieldColor),
          child: Center(
            child: Text(
              "No recent updates to show right now.",
              style: TextStyle(
                  fontSize: 14,
                  color: white.withOpacity(0.5),
                  fontWeight: FontWeight.w400),
            ),
          ),
        )
      ],
    );
  }
}
