import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List data = [];

  Future<void> fetchdata() async {
    final res = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    print("API Method");
    print(res.body.toString());

    setState(() {
      data = json.decode(res.body)['data'];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [],
        title: Text("API + Listview"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(data[index]["avatar"]),
              ),
              title: Text(
                data[index]['first_name'],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                data[index]['email'],
                style: TextStyle(fontSize: 17, fontStyle: FontStyle.italic),
              ));
        },
      ),
    );
  }
}
