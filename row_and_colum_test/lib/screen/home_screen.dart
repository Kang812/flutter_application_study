import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      color: Colors.red,),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      color: Colors.orange,),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      color: Colors.yellow,),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      color: Colors.green,),
                  ],
                ),
              ),
              Container(
                width: 50.0,
                height: 50.0,
                color: Colors.orange,
              ),
              Container(
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      color: Colors.red,),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      color: Colors.orange,
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                width: 50.0,
                height: 50.0,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}