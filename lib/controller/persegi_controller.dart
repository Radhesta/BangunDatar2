import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi=0;
  final hasil="".obs;
  final warna=Rx<Color>(Colors.black);
  void hitungLuas(){
    int hitung = sisi *sisi;
    warna.value=Colors.green;
    hasil.value="Hasil Perhitungan luas dari $sisi x $sisi = $hitung";
  }

  void hitungKeliling(){
    int hitung = sisi*4;
    warna.value=Colors.blueGrey;
    hasil.value="Hasil Perhitungan luas dari $sisi X 4 = $hitung";
  }
}