import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse("https://blog.codefactory.ai");

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(homeUrl);
  //final homeUrl = "https://blog.codefactory.ai";
  HomeScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            // http:// -> 예전에는 이것으로 전부 사용
            // hhtps:// -> 지금은 이거 사용, 이게 조금더 보안이 좋다.
            // 안드로이드와 IOS 2개다 http를 막고 있다. Why ? 보안적으로 좋지 않기 때문이다.
            // 그러나, 원한다면 풀수 있는 방법이 존재
            //if(controller == null){
            //  return;
            //}
            controller.loadRequest(homeUrl);
          },
              icon: Icon(
                Icons.home,
              ),)
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
      //WebView(
      //  onWebViewCreated: (WebViewController controller){
      //    this.controller = controller;
      //  },
      //  initialUrl: homeUrl,
      //  javascriptMode: JavascriptMode.unrestricted,
      //),
    );
  }
}
