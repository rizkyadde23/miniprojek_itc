import 'package:flutter/material.dart';

class RekomendasiModel {
  String nama;
  String icon;
  String deskripsi;

  RekomendasiModel(
      {required this.nama, required this.icon, required this.deskripsi});
  static List<RekomendasiModel> getRekomendasi() {
    List<RekomendasiModel> rekomendasi = [];
    rekomendasi.add(RekomendasiModel(
        nama: 'Elektronik',
        icon: 'assets/icons/elektronik.svg',
        deskripsi: 'Cari Barang Elektronik'));
    rekomendasi.add(RekomendasiModel(
        nama: 'Fashion',
        icon: 'assets/icons/fashion.svg',
        deskripsi: 'Fashion Branded'));
    rekomendasi.add(RekomendasiModel(
        nama: 'Lifestyle',
        icon: 'assets/icons/lifestyle.svg',
        deskripsi: 'Kebutuhan Lifestyle'));
    rekomendasi.add(RekomendasiModel(
        nama: 'Hiburan',
        icon: 'assets/icons/game.svg',
        deskripsi: 'Hobi & Hiburan'));
    return rekomendasi;
  }
}
