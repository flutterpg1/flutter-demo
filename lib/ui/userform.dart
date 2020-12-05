import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserForm extends StatefulWidget {
  UserForm({Key key}) : super(key: key);
  @override
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<UserForm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'User Form',
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            title: Text('user form'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('test');
                    // final route = MaterialPageRoute(builder: (context) => HomePage());
                    // Navigator.push(context, route);
                    // Validate returns true if the form is valid, or false
                    // otherwise.
                    // if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                    // Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                    // }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ));
  }
}
