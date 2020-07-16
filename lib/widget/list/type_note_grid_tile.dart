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
      width: context.pcw(3),
      decoration: BoxDecoration(
          color: Colors.orange[100],
          border: Border.all(color: Colors.orange[100]),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          )),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            typeNote.iconData,
            size: 40.0,
            color: Colors.orange[400],
          ),
          Text(
            '${typeNote.title}',
            style: TextStyle(
                color: Colors.orange,
                fontSize: context.pcw(7),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            '${typeNote.items} items',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
