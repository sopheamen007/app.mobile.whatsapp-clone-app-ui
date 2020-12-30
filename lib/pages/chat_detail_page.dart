import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:whatapp_clone_ui/json/chat_json.dart';
import 'package:whatapp_clone_ui/theme/colors.dart';

class ChatDetailPage extends StatefulWidget {
  final String name;
  final String img;

  const ChatDetailPage({Key key, this.name, this.img}) : super(key: key);
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: getAppBar(),
      bottomSheet: getBottomSheet(),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: greyColor,
      title: Container(
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(widget.img), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "last seen today at 10:10 PM",
                    style:
                        TextStyle(fontSize: 12, color: white.withOpacity(0.4)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: primary,
        ),
      ),
      actions: [
        Icon(
          LineIcons.video_camera,
          color: primary,
          size: 27,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          LineIcons.phone,
          color: primary,
          size: 27,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }

  Widget getBottomSheet() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 80,
      decoration: BoxDecoration(color: greyColor),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.add,
              color: primary,
              size: 28,
            ),
            Container(
              width: size.width * 0.6,
              height: 32,
              decoration: BoxDecoration(
                  color: white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: TextField(
                  style: TextStyle(color: white),
                  cursorColor: primary,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "",
                      suffixIcon: Icon(
                        LineIcons.sticky_note,
                        color: primary,
                        size: 25,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Icon(
                LineIcons.camera,
                color: primary,
                size: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Icon(
                LineIcons.microphone,
                color: primary,
                size: 25,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg_chat.jpg"),
              fit: BoxFit.cover)),
      child: ListView(
          padding: EdgeInsets.only(top: 20, bottom: 80),
          children: List.generate(messages.length, (index) {
            return CustomBubbleChat(
              message: messages[index]['message'],
              isMe: messages[index]['isMe'],
              isLast: messages[index]['isLast'],
              time: messages[index]['time'],
            );
          })),
    );
  }
}

class CustomBubbleChat extends StatelessWidget {
  final bool isMe;
  final String message;
  final String time;
  final bool isLast;

  const CustomBubbleChat(
      {Key key, this.isMe, this.message, this.time, this.isLast})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (isMe) {
      if (!isLast) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 2),
                child: Container(
                  decoration: BoxDecoration(
                      color: chatBoxMe, borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 5, bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          message,
                          style: TextStyle(fontSize: 16, color: white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          time,
                          style: TextStyle(
                              fontSize: 12, color: white.withOpacity(0.4)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      } else {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 14, bottom: 10),
                  child: Bubble(
                    nip: BubbleNip.rightBottom,
                    color: chatBoxMe,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          message,
                          style: TextStyle(fontSize: 16, color: white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          time,
                          style: TextStyle(
                              fontSize: 12, color: white.withOpacity(0.4)),
                        ),
                      ],
                    ),
                  )),
            )
          ],
        );
      }
    } else {
      if (!isLast) {
        return Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 2),
                child: Container(
                  decoration: BoxDecoration(
                      color: chatBoxOther,
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 5, bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message,
                          style: TextStyle(fontSize: 16, color: white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          time,
                          style: TextStyle(
                              fontSize: 12, color: white.withOpacity(0.4)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      } else {
        return Row(
          children: [
            Flexible(
              child: Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 14, bottom: 10),
                  child: Bubble(
                    nip: BubbleNip.rightBottom,
                    color: chatBoxOther,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message,
                          style: TextStyle(fontSize: 16, color: white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          time,
                          style: TextStyle(
                              fontSize: 12, color: white.withOpacity(0.4)),
                        ),
                      ],
                    ),
                  )),
            )
          ],
        );
      }
    }
  }
}
