import 'package:flutter/material.dart';
import 'package:flutter_book/models/notesModel.dart';
import 'package:scoped_model/scoped_model.dart';

class Notes extends StatelessWidget {
  Notes() {
    notesModel.loadData("notes", NotesDBWorker.db);
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel(model: notesModel, child: ScopedModelDescendant(builder: (BuildContext in Context, Widget inChild, Notesmodel inModel){return IndexedStack(index: inModel.stackIndex,children: [NotesList(),NotesEntry(),],)}));
  }
}
