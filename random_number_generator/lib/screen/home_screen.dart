import 'package:flutter/material.dart';
import '../constant/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("랜덤숫자 생성기", style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.settings,
                      color: RED_COLOR,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("123"),
                      Text("456"),
                      Text("789"),
                    ],
                  ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: RED_COLOR,
                          ),
                          onPressed: (){},
                          child: Text("생성하기!"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
