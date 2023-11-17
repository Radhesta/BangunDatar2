import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PersegiPanjangController extends GetxController {
      int Panjang=0;
      int Lebar=0;
      final hasil="".obs;

      void hitungLuas(){
      int hitung = Panjang * Lebar ;
      hasil.value="Hasil Perhitungan luas dari $Panjang x $Lebar = $hitung";
      }

      void hitungKeliling(){
      int hitung = 2 * (Panjang + Lebar);
      hasil.value="Hasil Perhitungan luas dari 2 x ($Panjang+$Lebar) = $hitung";
   }
}