import 'package:bangun_datar_radhesta/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class persegi_page extends StatelessWidget {
  persegi_page({Key? key}) : super(key: key);
  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("persegi"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "asset/persegi.jpeg",
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Persegi adalah segi empat",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value){
                _persegiController.sisi = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Sisi",
                  hintText: "Masukkan Sisi",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),

            Row(
              children: [
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed:(){
                  _persegiController.hitungLuas();
                }, child: Text("Hitung Luas", style: TextStyle(color: Colors.green),)),
                ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed:(){
                  _persegiController.hitungKeliling();
                }, child: Text("Hitung Keliling", style: TextStyle(color: Colors.deepPurple),)),
                ),
              ],
            ),

          Obx(() => Text(_persegiController.hasil.value,style: TextStyle(color: _persegiController.warna.value),))

        ],
      ),
    );
  }
}
