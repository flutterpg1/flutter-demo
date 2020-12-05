import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String labelText1;
  MyTextfield( this.labelText1){

  }
  final TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: new TextFormField(
        controller: controller,
        decoration:  InputDecoration(
            labelText: labelText1, border: OutlineInputBorder()),
      ),
    );
  }
}
