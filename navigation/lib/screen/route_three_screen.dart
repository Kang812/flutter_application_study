import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';

class RouteThreeeScreen extends StatelessWidget {
  const RouteThreeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(
        title: "Route Three",
        children: [
          Text(
            'argument:${argument}',
            textAlign: TextAlign.center,),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("Pop"))
        ],
    );
  }
}