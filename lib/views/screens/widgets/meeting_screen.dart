import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zoom_clone/controller/jitsi_controller.dart';
import 'package:zoom_clone/views/screens/widgets/reuseable_icon.dart';

class MeetingScreen extends StatelessWidget {
  final JitsiController _jitsiController = JitsiController();

  createNewMeeting() {
    var random = Random();
    String roomName = (random.nextInt(10000000) + 10000000).toString();
    _jitsiController.createMeeting(
        roomName: roomName, isAudioMuted: true, isVideoMuted: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReuseableIcon(
                icon: Icons.videocam,
                text: "New Meeting",
                onPressed: createNewMeeting,
              ),
              ReuseableIcon(
                icon: Icons.add_box_rounded,
                text: "Join Meeting",
                onPressed: () {
                  print("Joining a meeting");
                },
              ),
              ReuseableIcon(
                icon: Icons.calendar_today,
                text: "Schedule",
                onPressed: () {
                  print("Scheduling a meeting");
                },
              ),
              ReuseableIcon(
                icon: Icons.arrow_upward_rounded,
                text: "Share Screen",
                onPressed: () {
                  print("Sharing Screen");
                },
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Text(
                "Create / Join meetings with a click",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
