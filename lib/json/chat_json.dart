import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

const List profile = [
  {
    "name": "Sopheamen",
    "img":
        "https://lh3.googleusercontent.com/a-/AOh14GhqYCtgODjBQZ2EcAvJApnWnnDPgZe80-AMM6tctw=s600-k-no-rp-mo"
  }
];

const List chat_data = [
  {
    "img":
        "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Ben Parker",
    "text": "Yes, got it. Thanks for your contacting.",
    "date": "10/8/20"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1520155707862-5b32817388d6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Foto Sushi",
    "text": "going to sleep now",
    "date": "6/10/20"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Ayo Ogunseinde",
    "text": "Have a nice day, Sopheamen 😁",
    "date": "10/6/20"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Steve Halama",
    "text": "How is everthing?",
    "date": "11/5/20"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Zohre Nemati",
    "text": "ok",
    "date": "2/28/20"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzV8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Patrick Hendry",
    "text": "take care! speak soon :)",
    "date": "6/1/20"
  }
];

List setting_section_one = [
  {"icon": Icons.star, "text": "Starred Messages", "color": Colors.yellow[700]},
  {
    "icon": Icons.laptop,
    "text": "WhatsApp Web/Desktop",
    "color": Colors.green[800]
  },
];

List setting_section_two = [
  {"icon": Icons.lock, "text": "Account", "color": Colors.blue[700]},
  {"icon": Icons.chat_bubble, "text": "Chats", "color": Colors.green},
  {
    "icon": Icons.notification_important,
    "text": "Notifications",
    "color": Colors.redAccent
  },
  {
    "icon": LineIcons.database,
    "text": "Storage and Data",
    "color": Colors.green
  },
];

List setting_section_three = [
  {"icon": Icons.info_outline, "text": "Help", "color": Colors.blue[600]},
  {
    "icon": Icons.favorite_rounded,
    "text": "Tell a Friend",
    "color": Colors.red[400]
  },
];

const List messages = [
  {
    "isMe": true,
    "message": "Hey friend, How are you doing?",
    "time": "1:40 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "good to know you are well.",
    "time": "1:40 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "you can sing.",
    "time": "1:41 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "okay friend,",
    "time": "1:41 PM",
    "isLast": true,
  },
  {
    "isMe": false,
    "message": "Good ey friend",
    "time": "2:42 PM",
    "isLast": false,
  },
  {
    "isMe": false,
    "message": "jam sing 2 nak",
    "time": "2:44 PM",
    "isLast": false,
  },
  {
    "isMe": false,
    "message": "good nas",
    "time": "2:45 PM",
    "isLast": false,
  },
  {
    "isMe": false,
    "message": "Hi frienddd.",
    "time": "2:46 PM",
    "isLast": true,
  },
  {
    "isMe": true,
    "message": "yes, hey again Sophal",
    "time": "1:40 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "Let me try to call you tomorrow.",
    "time": "1:40 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "Next time pel tenh tam me tov",
    "time": "1:41 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "Order tam me tov",
    "time": "1:41 PM",
    "isLast": true,
  },
  {
    "isMe": false,
    "message": "Orkun friend",
    "time": "2:42 PM",
    "isLast": false,
  },
  {
    "isMe": false,
    "message": "me banh song fri venh ai",
    "time": "2:44 PM",
    "isLast": false,
  },
  {
    "isMe": false,
    "message": "orkun nas friend",
    "time": "2:45 PM",
    "isLast": false,
  },
  {
    "isMe": false,
    "message": "all the best na!!!",
    "time": "2:46 PM",
    "isLast": true,
  },
  {
    "isMe": true,
    "message": "Wow, niceee",
    "time": "1:40 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "Yes very good",
    "time": "1:40 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "No worries, all the best",
    "time": "1:41 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "talk to you soon.",
    "time": "1:41 PM",
    "isLast": true,
  },
];
