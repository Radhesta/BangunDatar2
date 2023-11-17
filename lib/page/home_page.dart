import 'dart:html';

import 'package:bangun_datar_radhesta/page/lingkaran_page.dart';
import 'package:bangun_datar_radhesta/page/persegi_page.dart';
import 'package:bangun_datar_radhesta/page/persegi_panjang_page.dart';
import 'package:bangun_datar_radhesta/page/segitiga_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xFF33BEBE),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => persegi_page()));
                    },
                    child: CustomMenu(
                        imageAsset: "asset/persegi.jpeg", title: "Persegi")),
              ),

               Expanded(
                 child: InkWell(
                    onTap: (){
                       Navigator.push(
                           context,
                           MaterialPageRoute(
                              builder: (context) => persegi_panjang_page()));
                        },
                      child: CustomMenu(
                        imageAsset: "asset/persegi_panjang.jpeg", title: "Persegi Panjang")),
              ),
              ],
              ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => segitiga_page()));
                  },
                  child: CustomMenu(
                      imageAsset: "asset/segitiga.jpeg", title: "Segitiga")),
              ),

              Expanded(
                child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LingkaranPage()));
                    },
                    child: CustomMenu(
                        imageAsset: "asset/lingkaran.jpeg", title: "Lingkaran")),
              ),
            ],
          ),
       ],
     ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        color: Colors.lightBlue,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset),
            Text(title),
          ],
        ));
  }
}
