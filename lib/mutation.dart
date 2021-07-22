import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Mutation extends StatelessWidget {
  InAppWebViewController _webViewController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mutation'),
        backgroundColor: Colors.redAccent,
      ),
        body: Container(
          child: InAppWebView(
              initialUrl: "https://jamabandi.punjab.gov.in/Mutation.aspx?section=Mutation-Number-Wise&itemID=13&itemPID=4",
              initialOptions: InAppWebViewGroupOptions(
                crossPlatform: InAppWebViewOptions(
                  javaScriptEnabled: true,
                  mediaPlaybackRequiresUserGesture: false,
                  debuggingEnabled: true,
                ),
              ),
              onWebViewCreated: (InAppWebViewController controller) {
                _webViewController = controller;
              },
              androidOnPermissionRequest: (InAppWebViewController controller, String origin, List<String> resources) async {
                return PermissionRequestResponse(resources: resources, action: PermissionRequestResponseAction.GRANT);
              }

          ),
        )
    );
  }
}
