import 'package:flutter/material.dart';

class Ott_S extends StatefulWidget {
  const Ott_S({Key? key}) : super(key: key);

  @override
  State<Ott_S> createState() => _Ott_SState();
}

class _Ott_SState extends State<Ott_S> {
  List img = [
    "assets/images/amazone.png",
    "assets/images/hotstar2.png",
    "assets/images/netflix1.jpeg",
    "assets/images/sonyliv.jpg",
    "assets/images/voot.webp",
  ];

  List link = [
    "https://www.amazon.in/",
    "https://www.hotstar.com/in",
    "https://www.netflix.com/in/",
    "https://www.sonyliv.com/",
    "https://www.voot.com/",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ott"),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: GridView.builder(
            itemCount: img.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            itemBuilder: (context, index) {
              return Container(
                height: double.infinity,
                width: double.infinity,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'links',arguments: link[index]);
                  },
                  child: Container(
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.all(10),
                    child: Container(
                      height: 90,
                      width: 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(img[index],fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
