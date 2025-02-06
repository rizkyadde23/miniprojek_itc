class Barang {
  String images;
  String harga;

  Barang({required this.images, required this.harga});
  static List<Barang> getBarang() {
    List<Barang> barang = [];
    barang.add(
        Barang(images: 'assets/images/download.jpg', harga: 'Rp7.000.000'));
    barang.add(Barang(images: 'assets/images/p.jpg', harga: ' '));
    barang.add(Barang(images: 'assets/images/handphone.webp', harga: 'harga'));
    barang.add(Barang(images: 'assets/images/laptop.webp', harga: 'harga'));
    return barang;
  }
}
