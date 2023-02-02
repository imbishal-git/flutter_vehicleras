import 'dart:ffi';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home:DriverForm()));
}

class DriverForm  extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DriverFormState();
  }
}

class DriverFormState extends State<DriverForm> {
  var _DriverFormKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Driver Form"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 25.0),
        child: Form(
          key: _DriverFormKey,
          child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      child:TextFormField(
                        validator:(Stringmsg) {
                        },
                        decoration: InputDecoration(
                          labelText: "Name",
                          hintText: "Enter your Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.0)
                          )
                        ),
                      ),
                      
                      ),
                        Padding(
                        padding: EdgeInsets.all(10.0),
                      child:TextFormField(
                        keyboardType: TextInputType.phone,
                        validator:(Stringmsg) {
                        },
                        decoration: InputDecoration(
                          labelText: "Mobile Number",
                          hintText: "Enter your mobile number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.0)
                          )
                        ),
                      ),
                      
                      ),
                       Padding(
                        padding: EdgeInsets.all(10.0),
                      child:TextFormField(
                        validator:(Stringmsg) {
                        },
                        decoration: InputDecoration(
                          labelText: "Vehicle",
                          hintText: "Enter the type of Vehicle",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.0)
                          )
                        ),
                      ),
                      
                      ),
                       Padding(
                        padding: EdgeInsets.all(10.0),
                      child:TextFormField(
                        keyboardType: TextInputType.phone,
                        validator:(Stringmsg) {
                        },
                        decoration: InputDecoration(
                          labelText: "Licence Number",
                          hintText: "Enter your Licence number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.0)
                          )
                        ),
                      ),
                      
                      ),
                       Padding(
                        padding: EdgeInsets.all(10.0),
                      child:TextFormField(
                        keyboardType: TextInputType.phone,
                        validator:(Stringmsg) {
                        },
                        decoration: InputDecoration(
                          labelText: "Number Plate",
                          hintText: "Enter your number Plate",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.0)
                          )
                        ),
                      ),
                      
                      ),
                      ElevatedButton(
                        onPressed: () {
                           if (_DriverFormKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                           }
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
          ),
        ),
      );
  }
}

class Stringlength {
}



