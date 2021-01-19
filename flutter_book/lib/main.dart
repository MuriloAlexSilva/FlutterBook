import 'dart:io';

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
    return Container();
  }
}
