import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_three_screen.dart';

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
          ElevatedButton(
            //push [HomeScreen, Route One, Route Two, Route Three]
            //pop [HomeScreen, Route One, Route Two]
            // push replace ment -> [HomeScreen, Route One, Route Two]순서로 바뀜 쯕, Route Two를 Route One으로 대치
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => RouteThreeeScreen(),));
              },
              child: Text('Push Replace Ment'),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.of(context).pushReplacementNamed('/three');
            },
            child: Text('Push Replace Ment Named'),
          ),
          ElevatedButton(
            // 뒤의 Route를 전부 지움
              onPressed: (){
                Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (_) => RouteThreeeScreen(),), (route) => route.settings.name == '/',
                );
              },
              child:Text('Push And Remove Until'),
          ),
        ]
    );
  }
}
