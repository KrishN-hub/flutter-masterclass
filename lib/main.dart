import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Future<void> getData() async {
    final res = await http.get(Uri.parse(
        "https://api.restful-api.dev/objects/ff808181932badb601944257c7907b5d"));
    print(res.body.toString());
  }

  Future<void> insertData() async {
    final res = await http.post(
      Uri.parse("https://api.restful-api.dev/objects"),
      headers: {
        "content-Type": "application/Json",
      },
      body: jsonEncode({
        "name": "Pirunthavan",
        "data": {"rollno": "16798", "class": "MCA", "Year": "3rd", "mark": '98'}
      }),
    );

    print(res.body.toString());
  }

  Future<void> updateData() async {
    final res = await http.put(
      Uri.parse(
          "https://api.restful-api.dev/objects/ff808181932badb601944257c7907b5d"),
      headers: {
        "content-Type": "application/Json",
      },
      body: jsonEncode({
        "name": "Pirunthavan K",
        "data": {"rollno": "16798", "class": "MSC", "Year": "3rd", "mark": '98'}
      }),
    );

    print(res.body.toString());
  }

  Future<void> deleteData() async {
    final res = await http.delete(
      Uri.parse(
          "https://api.restful-api.dev/objects/ff808181932badb601944257c7907b5d"),
      headers: {
        "content-Type": "application/Json",
      },
      body: jsonEncode({
        "name": "Pirunthavan K",
        "data": {"rollno": "16798", "class": "MSC", "Year": "3rd", "mark": '98'}
      }),
    );

    print(res.body.toString());
  }

  @override
  void initState() {
    //getData();
    //insertData();
    //updateData();
    deleteData();
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
    );
  }
}
