abstract class Market {
  // final olarak tanımlanan değişkenler değiştirilemez
  final String? name;
  final String? adress;

  // Değişken bilgisi daha sonra alınıcak (Doldurulmama ihtimalinde runtime da hata alınır)
  late final double rating;

  // Constructor yeni instance tanımlamamızı sağlar
  Market({this.name, this.adress, required this.rating});

  String checkStock({required String productId}) => "$productId nolu ürünün stoğu bulunmamaktadır.";
}

abstract class MarketFunc {
  void makeSale({required String orderId});
  String checkingStock();
}

// Class üzerine sadece bir tane extend gerçekleştirilebilir.
// Class üzerine birden fazla implements gerçekleştirilebilir.
class AMarket extends Market implements MarketFunc {
  final String? campaigns;

  AMarket({this.campaigns, required super.rating, super.name, super.adress});

  // Named Constructor : Özel constructor tanımlaması yapılabilir
  AMarket.standart({this.campaigns = "Süper Kampanya"})
      : super(name: "A Market", rating: 5, adress: "İstanbul");

  // implements olarak class üzerine bağlandığında fonksiyonlara erişim sağlanıyor
  

  @override
  void makeSale({required String orderId}) {
    print("$orderId nolu siparişin satışı yapılmıştır.");
  }
  
  @override
  String checkingStock() {
    return super.checkStock(productId: "12");
  }
  
}
