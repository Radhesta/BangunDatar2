import 'package:bangun_datar_radhesta/controller/persegi_panjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class persegi_panjang_page extends StatelessWidget {
  persegi_panjang_page({Key? key}) : super(key: key);
  final PersegiPanjangController _PersegiPanjangController =
      Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Panjang"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "asset/persegi_panjang.jpeg",
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Persegi Panjang",
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
                "Persegi panjang (bahasa Inggris: rectangle) adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yangmasing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku."),
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
                      _PersegiPanjangController.Panjang = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Panjang",
                        hintText: "Masukkan Panjang",
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
                      _PersegiPanjangController.Lebar = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Lebar",
                        hintText: "Masukkan Lebar",
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
                      _PersegiPanjangController.hitungLuas();
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
                      _PersegiPanjangController.hitungKeliling();
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
                    _PersegiPanjangController.hasil.value,
                  )))
        ],
      ),
    );
  }
}
