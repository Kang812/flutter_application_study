import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Home Screen', children: [
      ElevatedButton(
        onPressed: (){
          Navigator.of(context).maybePop();
        },
        child: Text("Maybe Pop"),
      ),
      ElevatedButton(
        onPressed: (){
          Navigator.of(context).pop();
        },
        child: Text("Pop"),
      ),
      ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => RouteOneScreen(number: 123,),
              ),
            );
          },
          child: Text("Push"),
      ),],
    );
  }
}
