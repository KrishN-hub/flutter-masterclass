import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

String mainimg =
    "https://i.pinimg.com/736x/ac/95/7b/ac957bd5463b9464d059cfd8cc35ef18.jpg";

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
          Center(
            child: Image.network(
              mainimg,
              height: 200,
            ),
          ),
          //menus
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  height: 10,
                ),
                buildConatiner_menu("kolkatha briyani"),
                SizedBox(
                  height: 10,
                ),
                buildConatiner_menu("thumb biriyaani"),
                SizedBox(
                  height: 10,
                ),
                buildConatiner_menu("Ampoor Biriyaani"),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 380,
            width: double.infinity,
            color: Colors.red,
            child: Row(
              children: [
                Container(
                  height: 380,
                  width: 160,
                  //color: Colors.black,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        buildGestureDetector_leftmenu(
                            "https://s3-ap-southeast-1.amazonaws.com/sb-singleserver-prod-bucket/4d2c226ee450be4c2ba9c59acef71e91/o_1486460912.jpg"),
                        SizedBox(
                          height: 10,
                        ),
                        buildGestureDetector_leftmenu(
                            "https://i.pinimg.com/originals/ba/0c/97/ba0c970c687b8d68ee4cedd564a7d02d.jpg"),
                        SizedBox(
                          height: 10,
                        ),
                        buildGestureDetector_leftmenu(
                            "https://restaurant.villagehotel.lk/wp-content/uploads/2020/10/Chicken-Biryani.jpg"),
                        SizedBox(
                          height: 10,
                        ),
                        buildGestureDetector_leftmenu(
                            "https://content.jdmagicbox.com/comp/def_content/biryani-delivery-restaurants/shutterstock-94898794-biryani-delivery-restaurants-8-u5f4j.jpg"),
                      ],
                    ),
                  ),
                ),

                //right side
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://i.pinimg.com/736x/ac/95/7b/ac957bd5463b9464d059cfd8cc35ef18.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(4, 5),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ingredients",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    //ingrrediant image
                    Container(
                      width: 200,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            buildCircleAvatar_ing(
                                "data:image/jpeg;base64,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"),
                            buildCircleAvatar_ing(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2Xy7W5XFM9VEjXb1RHf2kjxFSq0sgIbgeoQ&s"),
                            buildCircleAvatar_ing(
                                "https://itsnotcomplicatedrecipes.com/wp-content/uploads/2021/09/Sweet-Chilli-Sauce-4.jpg"),
                            buildCircleAvatar_ing(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-zZ79xJZZAm6s3ag7giNH-lXRPOd2MVS90g&s"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Kolkatha Briyaani",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Rs.200",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  CircleAvatar buildCircleAvatar_ing(img) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      radius: 27,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage(
          img,
        ),
        radius: 25,
      ),
    );
  }

  GestureDetector buildGestureDetector_leftmenu(briyaniname) {
    return GestureDetector(
      onTap: () {
        print("type 1");

        setState(() {
          mainimg = briyaniname;
        });
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: NetworkImage(
              briyaniname,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(4, 5),
              blurRadius: 6,
            ),
          ],
        ),
      ),
    );
  }

  Container buildConatiner_menu(menuname) {
    return Container(
      height: 70,
      width: 30,
      color: Colors.black,
      child: Text(
        menuname,
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
