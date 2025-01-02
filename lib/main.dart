import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //google photos
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "G",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.blue,
                            ),
                            children: [
                              TextSpan(
                                  text: "o",
                                  style: TextStyle(
                                    color: Colors.red,
                                  )),
                              TextSpan(
                                  text: "o",
                                  style: TextStyle(
                                    color: Colors.yellow,
                                  )),
                              TextSpan(
                                  text: "g",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  )),
                              TextSpan(
                                  text: "l",
                                  style: TextStyle(
                                    color: Colors.green,
                                  )),
                              TextSpan(
                                  text: "e",
                                  style: TextStyle(
                                    color: Colors.red,
                                  )),
                              TextSpan(
                                  text: "Photos",
                                  style: TextStyle(
                                    color: Colors.black,
                                  )),
                            ]),
                      ),
                      SizedBox(width: 45),
                      //profile picture
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD6V2A5AYbTf6SxKO8u2NMPrtwh03AYzCrIQ&s"),
                      )
                    ],
                  ),
                ),
                //left to right photo
                Container(
                  height: 200,
                  width: 330,
                  //color: Colors.red,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildContainer_top("1 Year ago",
                            "https://cdn.pixabay.com/photo/2016/09/01/01/26/family-1635049_640.jpg"),
                        SizedBox(
                          width: 10,
                        ),
                        buildContainer_top("Similer Photos",
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqp9DEuPHV5yNOev-CjDJM_cDnbx5ujSQLeg&s"),
                        SizedBox(
                          width: 10,
                        ),
                        buildContainer_top("3 Years ago",
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyEc44OKBYj2BL1qM6WFcZyKtFCVG05171Zg&s"),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                //date with location and icon

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "sat 13 July",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Pointpedro",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.check_circle_outline_outlined,
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
                //bottom Images
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 170,
                      width: 80,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildContainer_img(
                            "https://images.unsplash.com/photo-1511632765486-a01980e01a18?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dGVlbiUyMGZyaWVuZHN8ZW58MHx8MHx8fDA%3D",
                            52,
                            80,
                          ),
                          buildContainer_img(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNsBzPLFNpOJKsSmvNQGEn40lb1jHEa7pT2g&s",
                            52,
                            80,
                          ),
                          buildContainer_img(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQow7ExwnZlEmpdOf44zaMgKurSn9pCiWDkMQ&s",
                            52,
                            80,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://kristendyer.com/wp-content/uploads/2022/09/Family_pictures_with_6_month_old_kristen_dyer_photography_0005.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 80,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildContainer_img(
                            "https://images.unsplash.com/photo-1511632765486-a01980e01a18?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dGVlbiUyMGZyaWVuZHN8ZW58MHx8MHx8fDA%3D",
                            52,
                            80,
                          ),
                          buildContainer_img(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNsBzPLFNpOJKsSmvNQGEn40lb1jHEa7pT2g&s",
                            52,
                            80,
                          ),
                          buildContainer_img(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQow7ExwnZlEmpdOf44zaMgKurSn9pCiWDkMQ&s",
                            52,
                            80,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildContainer_img(
                      "https://media.istockphoto.com/id/1388273303/photo/shot-of-a-young-couple-bonding-with-their-baby-girl-on-a-sofa-at-home.jpg?s=612x612&w=0&k=20&c=4DxJwAaf815vP6goibGdhCki9qDkHEkgtyFRq3giSGs=",
                      100,
                      110,
                    ),
                    buildContainer_img(
                      "https://media.istockphoto.com/id/1388273303/photo/shot-of-a-young-couple-bonding-with-their-baby-girl-on-a-sofa-at-home.jpg?s=612x612&w=0&k=20&c=4DxJwAaf815vP6goibGdhCki9qDkHEkgtyFRq3giSGs=",
                      100,
                      110,
                    ),
                    buildContainer_img(
                      "https://media.istockphoto.com/id/1388273303/photo/shot-of-a-young-couple-bonding-with-their-baby-girl-on-a-sofa-at-home.jpg?s=612x612&w=0&k=20&c=4DxJwAaf815vP6goibGdhCki9qDkHEkgtyFRq3giSGs=",
                      100,
                      110,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //2 potos
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 220,
                      width: 120,
                      color: Colors.white,
                      child: Column(
                        children: [
                          buildContainer_img(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY1QWEyqVkT1KYSRDfiNo8YGm-TW8oFCMzvA&s",
                            70,
                            140,
                          ),
                          buildContainer_img(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY1QWEyqVkT1KYSRDfiNo8YGm-TW8oFCMzvA&s",
                            70,
                            140,
                          ),
                          buildContainer_img(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY1QWEyqVkT1KYSRDfiNo8YGm-TW8oFCMzvA&s",
                            70,
                            140,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 220,
                      width: 220,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://hips.hearstapps.com/hmg-prod/images/person-in-college-or-graduate-school-high-royalty-free-image-1647955477.jpg?crop=1xw:0.84276xh;center,top"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainer_img(
    img,
    height,
    width,
  ) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: NetworkImage(
            img,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Container buildContainer_top(text, img) {
    return Container(
      height: 200,
      width: 140,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(
            img,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
