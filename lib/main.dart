import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dynamicWidget.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  List<DynamicWidget> dynamicList = [];

  List<String> price = [];

  List<String> Product = [];
  addDynamic() {
    // if (Product.length != 0) {
    //   floatingIcon = new Icon(Icons.add);
    // }
    setState(() {});
    if (dynamicList.length >= 10) {
      return;
    }
    dynamicList.add(new DynamicWidget());
  }
  submitData() {
    // floatingIcon = new Icon(Icons.arrow_back);
    Product = [];
    price = [];
    dynamicList.forEach((widget) => Product.add(widget.product.text));
    dynamicList.forEach((widget) => price.add(widget.Price.text));
    setState(() {});
    print(Product.length);
    // sendData();
  }

  Widget submitButton = new Container(
    child: new RaisedButton(
      // onPressed:submitData,
      child: new Padding(
        padding: new EdgeInsets.all(16.0),
        child: new Text('Submit Data'),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    Widget dynamicTextField = new Flexible(
      flex: 2,
      child: new ListView.builder(
        itemCount: dynamicList.length,
        itemBuilder: (_, index) => dynamicList[index],
      ),
    );
    Widget result = new Flexible(
        flex: 1,
        child: new Card(
          child: ListView.builder(
            itemCount: Product.length,
            itemBuilder: (_, index) {
              return new Padding(
                padding: new EdgeInsets.all(10.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      margin: new EdgeInsets.only(left: 10.0),
                      child: new Text(
                          "${index + 1} : ${Product[index]}                       ${price[index]}"),
                    ),
                    new Divider()
                  ],
                ),
              );
            },
          ),
        ));
    return new Scaffold(
      appBar: AppBar(title: Text('Dynamic form')),
      drawer: Drawer(child: Text('dr'),),
        body: new Container(
          child: new Column(children: <Widget>[
            Product.length == 0 ? dynamicTextField : result,
            Product.length == 0 ? submitButton : new Container(),
          ]),
        ),
        floatingActionButton: new FloatingActionButton(
            onPressed: addDynamic, child: new Icon(Icons.add)));
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttereee Demo 123ss',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter11 Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                  ),
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
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState.validate()) {
                        // Process data.
                      }
                    },
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
