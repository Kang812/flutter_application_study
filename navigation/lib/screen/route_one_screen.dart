import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;

  const RouteOneScreen({this.number, super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Route One",
      children: [
        Text(
          "augments:${number}",
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Pop")
        ),
        ElevatedButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (BuildContext context) => RouteTwoScreen(),
                    settings: RouteSettings(
                      arguments:789
                    ),
                ),
              );
            },
            child: Text("Push"))
      ],
    );
  }
}