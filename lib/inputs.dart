import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

  void main() => runApp(Inputs());

  /// This is the main application widget.
  class Inputs extends StatelessWidget {
  static const String _title = 'Rapor Bilgileri';

  @override
Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
          primarySwatch: Colors.green, //ThemeData
          accentColor: Colors.white70),
      home: Scaffold(
       appBar: AppBar(title: const Text(_title)),
       body: MyStatefulWidget(),
      ),
    );
  }
 }
  /// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
 _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
  }

  /// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Rapor Adı',
                ),
              validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              child: ElevatedButton(
                onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                  if (_formKey.currentState.validate()) {
                        // Process data.
                      }
                    },
                child: Text('Kaydet'),
                  ),
                )]));
              }}