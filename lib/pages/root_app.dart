import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:whatapp_clone_ui/pages/calls_page.dart';
import 'package:whatapp_clone_ui/pages/camera_page.dart';
import 'package:whatapp_clone_ui/pages/chat_page.dart';
import 'package:whatapp_clone_ui/pages/settings_page.dart';
import 'package:whatapp_clone_ui/pages/status_page.dart';
import 'package:whatapp_clone_ui/theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        StatusPage(),
        CallsPage(),
        CameraPage(),
        ChatPage(),
        SettingsPage()
      ],
    );
  }

  Widget getFooter() {
    List iconItems = [
      LineIcons.circle,
      LineIcons.phone_square,
      LineIcons.camera,
      LineIcons.comment,
      LineIcons.gear,
    ];
    List textItems = ["Status", "Calls", "Camera", "Chats", "Settings"];
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(color: greyColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(textItems.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = index;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      iconItems[index],
                      color:
                          pageIndex == index ? primary : white.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(textItems[index],
                        style: TextStyle(
                            fontSize: 10,
                            color: pageIndex == index
                                ? primary
                                : white.withOpacity(0.5).withOpacity(0.5))),
                  ],
                ),
              );
            })),
      ),
    );
  }
}
