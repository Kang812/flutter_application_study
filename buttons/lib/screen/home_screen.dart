import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼!'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                //backgroundColor: MaterialStateProperty.all(Colors.black,),

                // Material State
                // hovered - 호버링 상태 (마우스 커서를 올려 놓은 상태) 모바일 상태에는 사용 x
                // focused - 포커스 됐을 때 (텍스트 필드를 누른 상태 -> 커서가 깜박이는 상태) 사용 x
                // pressed - 눌렸을 때
                // dragged - 드래그 됐을 때
                // selected - 선택됐을 때 (체크 박스, 라디오 버튼, )
                // scrollUnder - 다른 컴포넌트 밑으로 스크롤이 됐을 경우
                // disabled - 비활성화 됐을 때, onPressed가 null 일 때,
                // error - 에러 상태
                backgroundColor : MaterialStateProperty.resolveWith(
                        (Set<MaterialState> states){
                      if(states.contains(MaterialState.pressed)){
                        return Colors.green;
                      }
                      //MaterialState.
                      return Colors.black;
                    }
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states){
                      if(states.contains(MaterialState.pressed)){
                        return Colors.white;
                      }
                      //MaterialState.
                      return Colors.red;
                    }
                ),
                padding: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states){
                      if(states.contains(MaterialState.pressed)){
                        return EdgeInsets.all(100.0);
                      }
                      return EdgeInsets.all(20.0);
                    },
                ),
              ),
              child:Text(
                    "ButtonStyle"
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.red, // 메인 칼라
                disabledBackgroundColor: Colors.black, // 글자 및 애니메이션 색 현재 적용이 안됨 .. ㅠㅠ
                shadowColor: Colors.green, // 그림자 색상
                elevation: 10.0, // 3D 입체감의 높이
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: EdgeInsets.all(32.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
              ),
              child: Text(
                "ElevatedButton",),
            ),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  backgroundColor: Colors.yellow,
                  elevation: 10.0,
                ),
                child: Text(
                    "OutlinedButton"),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.brown,
                backgroundColor: Colors.blue,
                elevation: 10.0,
              ),
              child:  Text(
                  "TextButton",),
            ),
          ],
        ),
      ),
    );
  }
}
