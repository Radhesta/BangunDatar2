import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController {
  int jari = 0;
  double phi = 3.14;

  final hasil = "".obs;
  final Color = Colors.red.obs;

  void hitungLuas() {
    double hitung = phi * jari * jari;
    hasil.value = "Hasil Perhitungan luas dari $jari = $hitung";
    Color.value = Colors.blue;
  }

  void hitungKeliling() {
    double hitung = 2 * phi * jari;
    hasil.value = "Hasil Perhitungan Keliling dari $jari = $hitung";
    Color.value = Colors.red;
  }
}
