import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/MyTextField.dart';
import 'dynamicWidget.dart';

void main() {
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
  const StartApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
            title: 'Fluttereee Demo 123ss',
            theme: ThemeData(
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
              ),
              primarySwatch: Colors.green,
            ),
            home: HomePage()));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyForm'),
        ),
        body: Container(
          child: Container(
            child: Column(
              children: [
                MyTextfield('Name'),
                MyTextfield('Age'),
                Expanded(
                    child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      // onPrimary: Colors.white,
                      shadowColor: Colors.red,
                      elevation: 5),
                  onPressed: () {
                    print('cl');
                  },
                  child: Text('Save1'),
                ))
              ],
            ),
          ),
        ));
  }
}
