class Insan {
  //başlangıç scope
  //datatype değişkeninAdi
  String ad = ""; //alfanümerik değerleri saklamımızı sağlar
  String soyad = "";
  int yas = 0; //tam sayısal verileri depolamamzı sağlar
  double maas = 0.0; //kesirli küsaratlı sayıları depolamamızı sağlar
  bool cinsiyet = false; // true yada false şeklinde değer saklanır

  //metotlar geriye değer döndüren ve değer döndürmeyen şeklinde 2 ye ayrılırlar

  //metodAdi() {   }
  uyu(String isim, String soyisim) {
    print(isim + " " + soyisim + " uyuyor");
  }

  ekranaYaz(String isim, String soyisim) {
    print("kişinin adı : " + isim + " kişinin soyadı : " + soyisim);
  }

  yasHesapla(int dogumYili) {
    int sonuc = 0;
    sonuc = 2023 - dogumYili;
    return sonuc;
  }
}
