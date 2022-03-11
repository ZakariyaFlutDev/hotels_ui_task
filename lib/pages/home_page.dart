import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#header
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpg"),
                  fit: BoxFit.cover
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Best Hotels Ever", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search for hotels ...",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),

            //body
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bussiness Hotels", style: TextStyle(color: Colors.grey.shade800, fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(img:"assets/images/ic_hotel1.jpg", title: "Hotel 1"),
                        makeItem(img:"assets/images/ic_hotel2.jpg", title: "Hotel 2"),
                        makeItem(img:"assets/images/ic_hotel3.jpg", title: "Hotel 3"),
                        makeItem(img:"assets/images/ic_hotel4.jpg", title: "Hotel 4"),
                        makeItem(img:"assets/images/ic_hotel5.jpg", title: "Hotel 5"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Airport Hotels", style: TextStyle(color: Colors.grey.shade800, fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(img:"assets/images/ic_hotel4.jpg", title: "Hotel 1"),
                        makeItem(img:"assets/images/ic_hotel3.jpg", title: "Hotel 2"),
                        makeItem(img:"assets/images/ic_hotel1.jpg", title: "Hotel 3"),
                        makeItem(img:"assets/images/ic_hotel2.jpg", title: "Hotel 4"),
                        makeItem(img:"assets/images/ic_hotel5.jpg", title: "Hotel 5"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Resort Hotels", style: TextStyle(color: Colors.grey.shade800, fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(img:"assets/images/ic_hotel5.jpg", title: "Hotel 1"),
                        makeItem(img:"assets/images/ic_hotel1.jpg", title: "Hotel 2"),
                        makeItem(img:"assets/images/ic_hotel4.jpg", title: "Hotel 3"),
                        makeItem(img:"assets/images/ic_hotel2.jpg", title: "Hotel 4"),
                        makeItem(img:"assets/images/ic_hotel5.jpg", title: "Hotel 5"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({img, title}){
    return AspectRatio(
      aspectRatio: 1.1/1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
              Icon(Icons.favorite, color: Colors.red,)
            ],
          )
        ),
      ),
    );
  }
}
