import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //bottom: false,
        child: Container(
          color: Colors.black,
          //width: MediaQuery.of(context).size.width, // Colum 일 때
          //height: MediaQuery.of(context).size.height, // Row 일 때
          child: Column(
            //Column - 세로 배치
            //Row - 가로 배치
            //MainAxisAlignment - 주측 정렬
            // start - 시작
            // end - 끝
            // center - 중앙
            // spaceBetween - 위젯 사이의 간격이 동일하게 배치된다.
            // spaceEvenly - 위젯을 같은 간격으로 배치하지만 끝과 끝에도
            //               위젯이 아닌 빈 간격으로 배치한다.
            // spaceAround - spaceEvenly + 끝과 끝의 간격은 반
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment - 반대축 정렬
            // start - 시작
            // end - 끝
            // center - 가운데 정렬
            // stretch - 최대한으로 늘린다.
            crossAxisAlignment: CrossAxisAlignment.start,
            // MainAxisSize - 주축의 크기
            // max - 최대
            // min - 최소
            mainAxisSize: MainAxisSize.max,
            children: [
              //Expanded, Flexible - Row와 Colum 위젯에 children에만 사용을 할 수 있다. !!
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
