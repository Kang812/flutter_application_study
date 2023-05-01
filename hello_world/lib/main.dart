import 'package:flutter/material.dart';

void main() {
  // 1. runApp에는 우선 MaterialApp이라는 것이 들어가야 된다 !!
  // 2. MaterialApp에 home page를 정할 수 있다.
  // 3. home에는 Scaffold를 지정하고, body를 작성이 코드가 기본적인 어플 개발의 포펫
  // 4. body는 어플 개발의 몸쪽 부분에 해당
  runApp(
    MaterialApp(
      home : Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child : Text("Hello World", style: TextStyle(color: Colors.white, fontSize: 20.0),)
        ),
      ),
    ),
  );
}