import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/data/fake.dart';
import 'package:dashboard_timeline_ui_demo/widget/type_note_grid_tile.dart';
import 'package:dashboard_timeline_ui_demo/extension/context_extension.dart';

class TypeNoteGrid extends StatelessWidget {
  const TypeNoteGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: context.pch(5), horizontal: context.pcw(5)),
      child: GridView.builder(
        itemCount: typeNotes.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          final typeNote = typeNotes[index];
          return TypeNoteGridTile(typeNote: typeNote);
        },
      ),
    );
  }
}
