import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/model/type_note_model.dart';
import 'package:dashboard_timeline_ui_demo/extension/context_extension.dart';

class TypeNoteGridTile extends StatelessWidget {
  const TypeNoteGridTile({
    Key key,
    @required this.typeNote,
  }) : super(key: key);

  final TypeNote typeNote;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange[100],
        border: Border.all(color: Colors.orange[100]),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            typeNote.iconData,
            size: context.pcw(10),
            color: Colors.orange[400],
          ),
          Text(
            '${typeNote.title}',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.orange,
              fontSize: context.pcw(6),
            ),
          ),
          Text(
            '${typeNote.items} items',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: context.pcw(3.5),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
