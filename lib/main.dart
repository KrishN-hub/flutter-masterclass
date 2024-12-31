import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

String degree = "";
bool chv1 = false;
bool chv2 = false;
bool chv3 = false;
bool chv4 = false;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsBQbf1C3Jn0QE1_VVvpkrMl1ZceLBdHLw8UwBAQuy0yLkwKy03OIZJyNjVohPp92o4sM&usqp=CAU"),
                  fit: BoxFit.cover),
            ),
          ),
          Text(
            "Feedback Form",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          Container(
            height: 380,
            //color: Colors.red,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    //name
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Enter Your Name",
                        labelText: "Your name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: "Enter Your whatsApp number",
                        labelText: "WhatsApp No",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "your Degree",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Radio(
                            value: "UG",
                            groupValue: degree,
                            onChanged: (value) {
                              setState(() {
                                degree = value.toString();
                              });
                              print(value);
                            }),
                        Text("UG Student"),
                        Radio(
                            value: "UG",
                            groupValue: degree,
                            onChanged: (value) {
                              setState(() {
                                degree = value.toString();
                              });
                              print(value);
                            }),
                        Text("PG Student"),
                        Radio(
                            value: "UG",
                            groupValue: degree,
                            onChanged: (value) {
                              setState(() {
                                degree = value.toString();
                              });
                              print(value);
                            }),
                        Text("DEV Student"),
                      ],
                    ),
                    //favorite program
                    Text(
                      "favourite Program",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: chv1,
                            onChanged: (value) {
                              setState(() {
                                chv1 = value ?? false;
                              });
                              print(value);
                            }),
                        Text("Laravel"),
                        Checkbox(
                            value: chv2,
                            onChanged: (value) {
                              setState(() {
                                chv2 = value ?? false;
                              });
                              print(value);
                            }),
                        Text("Flutter"),
                        Checkbox(
                            value: chv3,
                            onChanged: (value) {
                              setState(() {
                                chv3 = value ?? false;
                              });
                              print(value);
                            }),
                        Text("React"),
                        Checkbox(
                            value: chv4,
                            onChanged: (value) {
                              setState(() {
                                chv4 = value ?? false;
                              });
                              print(value);
                            }),
                        Text("Jason"),
                      ],
                    ),
                    TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: "Enter Your Feedback",
                        labelText: "Your FeedBack",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
