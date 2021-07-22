import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter/material.dart';

class WebViewPage extends StatefulWidget {
  final String titile;
  final String url;

  const WebViewPage({Key key, this.titile, this.url}) : super(key: key);
  @override
  _WebViewPage createState() => _WebViewPage();
}

class _WebViewPage extends State<WebViewPage> {
  InAppWebViewController webViewController;

  bool isLoading =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titile),
        backgroundColor: Colors.redAccent,
      ),
      body: Stack(
        children: [
          Expanded(
            child: Visibility(
                visible:isLoading,
                child:Center(child: CircularProgressIndicator()) ),
          ),


          Expanded(
            child: Visibility(
                visible: !isLoading,
                maintainState: true,
                child:
                Container(

                  child: InAppWebView(
                    initialUrl: widget.url,
                    initialHeaders: {},
                    initialOptions: InAppWebViewGroupOptions(
                        crossPlatform: InAppWebViewOptions(
                          debuggingEnabled: true,
                        )),
                    onWebViewCreated: (InAppWebViewController controller) {
                      webViewController = controller;
                    },
                    onLoadStart: (InAppWebViewController controller, String url) {
                      setState(() {
                        isLoading =true;
                      });
                    },
                    onLoadStop: (InAppWebViewController controller, String url) async {
                      setState(() {
                        isLoading =false;
                      });
                      setState(() {
                        // webViewController
                        //     .evaluateJavascript(source: """alert("hello");""");
                        webViewController.injectCSSCode(
                            source:
                            """ .clearfix"{
                   display:none;
                   visibility: hidden;
}""");
                      });
                    },
                    onProgressChanged: (InAppWebViewController controller, int progress) {
                      setState(() {
                        webViewController.injectCSSCode(
                            source:
                            """ .clearfix"{
                   display:none;
                   visibility: hidden;
}

.btnt{display:inline-block; float:left;}""");
                        // 100;
                      });
                    },
                  ),
                )  ),
          ),
        ],
      ),
    );
  }
}