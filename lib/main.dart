import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phone_state/flutter_phone_state.dart';
import 'package:flutter/foundation.dart';



void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: CupertinoButton.filled(child: Text('Ligar'), onPressed: () {
            final phoneCall = FlutterPhoneState.startPhoneCall("480-555-1234");
            debugPrint('tap');
          }, ),
                
        ),
      ),
    );
  }
}