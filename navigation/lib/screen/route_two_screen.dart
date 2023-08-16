import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final augments = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(
        title: "Route Two", 
        children: [
          Text(
            "augments:${augments}",
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Pop")),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed('/three', arguments: 999);
              },
              child: Text("Push Named")
          ),
        ]
    );
  }
}
