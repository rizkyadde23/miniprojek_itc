class Barang {
  String images;
  String harga;
  String nama;
  String rating;
  String terjual;
  String lokasi;

  Barang(
      {required this.images,
      required this.harga,
      required this.lokasi,
      required this.nama,
      required this.rating,
      required this.terjual});
  static List<Barang> getBarang() {
    List<Barang> barang = [];
    barang.add(Barang(
        images: 'assets/images/barang/headset.png',
        harga: 'Rp300.000',
        lokasi: 'Jakarta Selatan',
        nama: 'Headset Gaming',
        rating: '4.5',
        terjual: '1,2Rb++ Terjual'));
    barang.add(Barang(
        images: 'assets/images/barang/iphone.webp',
        harga: 'Rp15.399.000',
        lokasi: 'Jakarta Pusat',
        nama: 'Iphone 15 Pro Mek',
        rating: '4.9',
        terjual: '200 Terjual'));
    barang.add(Barang(
        images: 'assets/images/barang/lemari.webp',
        harga: 'Rp799.000',
        lokasi: 'Surabaya',
        nama: 'Lemari Pakaian',
        rating: '4.2',
        terjual: '578 Terjual'));
    barang.add(Barang(
        images: 'assets/images/barang/meja.webp',
        harga: 'Rp599.000',
        lokasi: 'Tangerang',
        nama: 'Meja Furnitur Ukuran Luas',
        rating: '4.5',
        terjual: '2,2Rb++ Terjual'));
    barang.add(Barang(
        images: 'assets/images/barang/mesin cuci.jpg',
        harga: 'Rp1.000.000',
        lokasi: 'Jakarta Barat',
        nama: 'Mesin Cuci Dan Pengering',
        rating: '4.3',
        terjual: '354 Terjual'));
    barang.add(Barang(
        images: 'assets/images/barang/parfum.png',
        harga: 'Rp43.000',
        lokasi: 'Yogyakarta',
        nama: 'Parfum Lanang',
        rating: '4.9',
        terjual: '1Rb++ Terjual'));
    barang.add(Barang(
        images: 'assets/images/barang/ps5.webp',
        harga: 'Rp10.299.000',
        lokasi: 'Jakarta Selatan',
        nama: 'PS5 All Varian Bonus Game',
        rating: '4.7',
        terjual: '50 Terjual'));
    barang.add(Barang(
        images: 'assets/images/barang/xbox.webp',
        harga: 'Rp10.000.000',
        lokasi: 'Tangerang',
        nama: 'Xbox Series X',
        rating: '4.6',
        terjual: '39 Terjual'));

    return barang;
  }
}
