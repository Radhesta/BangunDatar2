import 'package:bangun_datar_radhesta/controller/persegi_panjang_controller.dart';
import 'package:bangun_datar_radhesta/controller/segitiga_controller.dart';
import 'package:bangun_datar_radhesta/page/persegi_panjang_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class segitiga_page extends StatelessWidget {
  segitiga_page({Key? key}) : super(key: key);

  final SegitigaController _SegitigaController=
      Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("segitiga"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "asset/segitiga.jpeg",
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Segitiga",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            child: Text(
                "Segitiga merupakan bangun datar yang dibatasi dengan adanya tiga buah sisi serta memiliki tiga buah titik sudut."),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      _SegitigaController.alas = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "alas",
                        hintText: "Masukkan alas",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.blue),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      _SegitigaController.tinggi = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "tinggi",
                        hintText: "Masukkan tinggi",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.blue),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      _SegitigaController.sisi = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "sisi",
                        hintText: "Masukkan sisi",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.blue),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)))),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      _SegitigaController.hitungLuas();
                    },
                    child: Text(
                      "Hitung Luas",
                      style: TextStyle(color: Colors.green),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      _SegitigaController.hitungKeliling();
                    },
                    child: Text(
                      "Hitung Keliling",
                      style: TextStyle(color: Colors.deepPurple),
                    )),
              ),
            ],
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
              child: Obx(() => Text(
                _SegitigaController.hasil.value,
              )))
        ],
      ),
    );
  }
}