import 'dart:io';
import 'package:flutter_book/views/appointments.dart';
import 'package:flutter_book/views/contacts.dart';
import 'package:flutter_book/views/notes.dart';
import 'package:flutter_book/views/tasks.dart';
import 'package:path_provider/path_provider.dart';
import 'utils.dart' as utils;
import 'package:flutter/material.dart';

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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter book"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.date_range), text: "Appointments"),
              Tab(icon: Icon(Icons.contacts), text: "Contacts"),
              Tab(icon: Icon(Icons.note), text: "Notes"),
              Tab(icon: Icon(Icons.assignment_turned_in), text: "Tasks"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Appointments(),
            Contacts(),
            Notes(),
            Tasks(),
          ],
        ),
      ),
    );
  }
}
