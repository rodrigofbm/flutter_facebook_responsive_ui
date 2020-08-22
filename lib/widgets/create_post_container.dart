import 'package:flutter/material.dart';
import './profile_avatar.dart';

import '../models/models.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key key, @required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 8.0),
              Expanded(
                  child: TextField(
                decoration:
                    InputDecoration.collapsed(hintText: "What's on your mind?"),
              ))
            ],
          ),
          const Divider(height: 10.0, thickness: 0.8),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text("Live")),
                const VerticalDivider(width: 8.0),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: Text("Photo")),
                const VerticalDivider(width: 8.0),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: Text("Room")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
