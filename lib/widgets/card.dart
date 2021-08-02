import 'package:flutter/material.dart';

class CardsEt extends StatelessWidget {
  final titles = ["List 1", "List 2", "List 3", "List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle",
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];
  final icons = [
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(titles[index]),
            subtitle: Text(subtitles[index]),
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/person.png"),
            ),
            trailing: Icon(
              icons[index],
            ),
          ),
        );
      },
    );
  }
}
