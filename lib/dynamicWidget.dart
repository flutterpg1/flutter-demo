import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DynamicWidget extends StatelessWidget {
 final TextEditingController product = new TextEditingController();
 final  TextEditingController Price = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
//      margin: new EdgeInsets.all(8.0),
        child:ListBody(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 200,
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: new TextFormField(
                  controller: product,
                    decoration: const InputDecoration(
                        labelText: 'product Name',
                        border: OutlineInputBorder()
                  ),
                ),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: new TextFormField(
                  controller: Price,
                    decoration: const InputDecoration(
                        labelText: 'Price', 
                        border: OutlineInputBorder()
                  ),
                  keyboardType: TextInputType.number,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}