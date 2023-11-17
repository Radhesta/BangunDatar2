import 'package:bangun_datar_radhesta/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({super.key});
  final LingkaranController _lingkaranController = Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Persegi Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //bagian image
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      "assets/lingkaran.jpeg",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Bangun Datar Lingkaran',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'sans-serif',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //end bagian image

            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(
                'Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku.', style:
              TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      onChanged: ((value) => {
                        _lingkaranController.jari = int.parse(value),
                      }),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Jari-jari lingkaran",
                          hintText: "Masukkan jari-jari",
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
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {
                              _lingkaranController.hitungLuas();
                            },
                            child: Text(
                              'Hitung Luas',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              _lingkaranController.hitungKeliling();
                            },
                            child: Text(
                              'Hitung Keliling',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),

              child: Column(
                children: [
                  Text(
                    'Perhitungan :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Obx(
                          () => Text(
                        _lingkaranController.hasil.value,
                        style: TextStyle(
                          color: _lingkaranController.Color.value,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  Text(
                      '==============================================='
                  ),

                  Text(
                    'Thank You',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}