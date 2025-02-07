class FlashSale {
  String images;
  String harga;

  FlashSale({required this.images, required this.harga});
  static List<FlashSale> getFlashSale() {
    List<FlashSale> flashsale = [];
    flashsale.add(FlashSale(
        images: 'assets/images/flashsale/laptop.webp', harga: 'Rp7.000.000'));
    flashsale.add(FlashSale(
        images: 'assets/images/flashsale/handphone.webp',
        harga: 'Rp5.999.000'));
    flashsale.add(FlashSale(
        images: 'assets/images/flashsale/printer.webp', harga: 'Rp2.000.000'));
    flashsale.add(FlashSale(
        images: 'assets/images/flashsale/monitor.webp', harga: 'Rp1.200.000'));
    return flashsale;
  }
}
