import 'dart:io';
import 'utils.dart' as utils;
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'pages/appointments.dart';
import 'pages/contacts.dart';
import 'pages/notes.dart';
import 'pages/tasks.dart';

void main() {
  startMeUp() async {
    Directory docsDir = await getApplicationDocumentsDirectory();
    utils.docsDir = docsDir;
    runApp(FlutterBook());
  }

  startMeUp();
}

class FlutterBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        //Para controlar o tabController
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Book"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.date_range), text: "Appointments"),
                Tab(icon: Icon(Icons.contacts), text: "Appointments"),
                Tab(icon: Icon(Icons.note), text: "Appointments"),
                Tab(
                    icon: Icon(Icons.assignment_turned_in),
                    text: "Appointments")
              ],
            ),
          ),
          body: TabBarView(
            children: [Appointments(), Contacts(), Notes(), Tasks()],
          ),
        ),
      ),
    );
  }
}
