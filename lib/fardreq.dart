import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class FardRequest extends StatelessWidget {
  InAppWebViewController _webViewController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fard Request Status'),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          child: InAppWebView(
              initialUrl: "https://jamabandi.punjab.gov.in/FardStatus.aspx?itemPID=29",
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
