// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projekitc1/models/barang.dart';
import 'package:projekitc1/models/flashSale.dart';
import 'package:projekitc1/models/rekomendasi.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<RekomendasiModel> rekomendasi = [];
  List<FlashSale> flashsale = [];
  List<Barang> barang = [];

  @override
  void initState() {
    _getRekomendasi();
    _getFlashSale();
    _getBarang();
  }

  void _getBarang() {
    barang = Barang.getBarang();
  }

  void _getFlashSale() {
    flashsale = FlashSale.getFlashSale();
  }

  void _getRekomendasi() {
    rekomendasi = RekomendasiModel.getRekomendasi();
  }

  @override
  Widget build(BuildContext context) {
    AppBar appbar = appBar();
    Scaffold scaffold = Scaffold(
      appBar: appbar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchBar(),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Column(
              children: [
                Text(
                  'Rekomendasi Barang',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: rekomendasiBarang(),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                flashSale(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Barang-Barang Spesial Untukmu',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          forYou(),
        ],
      ),
    );
    return scaffold;
  }

  Expanded forYou() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.65,
            ),
            itemCount: barang.length,
            itemBuilder: (contex, index) {
              return Container(
                margin: const EdgeInsets.all(2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Image.asset(
                        barang[index].images,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                        height: 95,
                        margin: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Flexible(child: Text('data')),
                            Flexible(
                              child: Text(
                                barang[index].nama,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Flexible(
                              child: Text(
                                barang[index].harga,
                                style: TextStyle(fontSize: 11),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                barang[index].rating,
                                style: TextStyle(fontSize: 11),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                barang[index].terjual,
                                style: TextStyle(fontSize: 11),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                barang[index].lokasi,
                                style: TextStyle(fontSize: 11),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 186, 182, 182),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          spreadRadius: 0.0,
                          blurRadius: 2,
                          color: const Color.fromARGB(255, 255, 0, 0))
                    ]),
              );
            }),
      ),
    );
  }

  Row flashSale() {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(right: 18, left: 18),
          width: 385,
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'FLASH SALE!!!',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: flashsale.length,
                  separatorBuilder: (context, index) => SizedBox(width: 5),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset(
                            flashsale[index].images,
                            fit: BoxFit.cover,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Text(
                          flashsale[index].harga,
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 89, 85, 85),
              borderRadius: BorderRadius.circular(10)),
        ),
      ],
    );
  }

  Container rekomendasiBarang() {
    return Container(
      height: 120,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 20,
        ),
        itemCount: rekomendasi.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20, right: 20),
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: SvgPicture.asset(rekomendasi[index].icon),
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    rekomendasi[index].nama,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Text(
                  rekomendasi[index].deskripsi,
                  style: TextStyle(fontSize: 8),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container searchBar() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 15,
            color: const Color.fromARGB(123, 92, 64, 64),
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(255, 255, 255, 255),
            contentPadding: EdgeInsets.all(10),
            hintText: 'Cari Barang yang Anda Butuhkan Disini',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(14.0),
              child: SvgPicture.asset(
                'assets/icons/cari.svg',
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'TOKOPEDEI',
        style: TextStyle(
          fontFamily: 'fancy',
          color: Colors.red,
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 79, 79, 79),
      elevation: 0.0,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          child: SvgPicture.asset(
            'assets/icons/dot.svg',
            width: 20,
            height: 20,
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            width: 35,
            margin: EdgeInsets.all(10),
            child: SvgPicture.asset(
              'assets/icons/keranjang.svg',
              width: 20,
              height: 20,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        )
      ],
    );
  }
}
