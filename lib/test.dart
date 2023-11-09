
import 'AkilliCocuk.dart';
import 'Anne.dart';
import 'Araba.dart';
import 'Baba.dart';
import 'Bmw.dart';
import 'Calisan.dart';
import 'Cocuk.dart';
import 'GenelMudur.dart';
import 'Insan.dart';
import 'Mercedes.dart';
import 'Mudur.dart';
import 'Porche.dart';
import 'Programci.dart';
import 'Stajyer.dart';
import 'UsluCocuk.dart';
import 'abstracts/YeniAraba.dart';
import 'abstracts/YeniBmw.dart';
import 'abstracts/YeniMercedes.dart';
import 'abstracts/YeniPorche.dart';

main() {
  print("Merhaba Dünya");
  Insan i = Insan();
  i.ad = "ibrahim";
  i.soyad = "gökyar";
  i.uyu(i.ad, i.soyad);

  Araba a = Araba();
  a.marka = "Bmw";
  a.model = "X5";
  a.git(a.marka, a.model);

  Anne anne = Anne();
  anne.ad = "Fahriye";
  anne.soyad = "Gökyar";
  anne.uyu(anne.ad, anne.soyad);
  anne.ekranaYaz(anne.ad, anne.soyad);
  anne.oku(anne.ad);
  anne.yaz(anne.ad);
  anne.dinle(anne.ad);

  Baba b = Baba();
  b.ad = "Kasım";
  b.soyad = "Gökyar";
  b.ekranaYaz(b.ad, b.soyad);
  b.oku(b.ad);

  Cocuk c = Cocuk();
  c.ad = "İbrahim";
  c.soyad = "Gökyar";
  c.ekranaYaz(c.ad, c.soyad);

  AkilliCocuk ak = AkilliCocuk();
  ak.ad = "Hakan";
  ak.soyad = "Yılmaz";
  ak.sifat = "Akıllıdır";
  ak.adSoyadSifatYaz(ak.ad, ak.soyad, ak.sifat);
  ak.askereGit(ak.ad);
  ak.ehliyetAl(ak.ad);
  ak.klubeGit(ak.ad);

  UsluCocuk us = UsluCocuk();
  us.ad = "Mehmet";
  us.soyad = "Yıldız";
  us.sifat = "Usludur";
  us.adSoyadSifatYaz(us.ad, us.soyad, us.sifat);
  us.askereGit(us.ad);
  us.ehliyetAl(us.ad);

  Bmw bmw = Bmw();
  bmw.marka = "bmw";
  bmw.model = "x5";
  bmw.markaModelYaz(bmw.marka, bmw.model);
  bmw.cokHizliGit(bmw.marka);
  bmw.havadaUc(bmw.marka);
  bmw.denizdeYuz(bmw.marka);

  Mercedes mercedes = Mercedes();
  mercedes.marka = "mercedes";
  mercedes.model = "XL";
  mercedes.markaModelYaz(mercedes.marka, mercedes.model);
  mercedes.denizdeYuz(mercedes.marka);
  mercedes.havadaUc(mercedes.marka);

  Porche porche = Porche();
  porche.marka = "Porche";
  porche.model = "Carrera";
  porche.markaModelYaz(porche.marka, porche.model);
  porche.cokHizliGit(porche.marka);

  GenelMudur gm = GenelMudur();
  Mudur mudur = Mudur();
  Programci programci = Programci();
  Stajyer stajyer = Stajyer();

  double toplamMaas = 0.0;

  toplamMaas = gm.maasinizNedir() +
      mudur.maasinizNedir() +
      programci.maasinizNedir() +
      stajyer.maasinizNedir();
  print("Toplam Maaş : " + toplamMaas.toString());

  YeniBmw yeniBmw = YeniBmw();
  YeniMercedes yeniMercedes = YeniMercedes();
  YeniPorche yeniPorche = YeniPorche();
  double toplamBenzin = 0.0;
  toplamBenzin = yeniBmw.HarcananBenzin() +
      yeniMercedes.HarcananBenzin() +
      yeniPorche.HarcananBenzin();

  //for() {  }
  for (int i = 0; i < 10; i++) {
    print("Merhaba Dünya");
  }

  List<String> renkler = ["Kırmızı", "Yeşil", "Sarı", "Siyah"];

  for (int i = 0; i < renkler.length; i++) {
    print(renkler[i]);
  }

  List<int> sayilar = [1, 3, 5, 7, 9, 11, 14, 17, 20, 22, 33, 44, 55];
  //sayıların toplamı budur.
  int sayiToplam = 0;
  for (int i = 0; i < sayilar.length; i++) {
    sayiToplam = sayiToplam + sayilar[i];
    //sayiToplam += sayilar[i];
  }
  print("Sayıların toplamı : " + sayiToplam.toString());

  List<Calisan> calisanlar = [gm, mudur, programci, stajyer];
  double calisanToplamMaas = 0.0;
  for (int i = 0; i < calisanlar.length; i++) {
    calisanToplamMaas += calisanlar[i].maasinizNedir();
  }
  print("çalışanların toplam maaşı :" + calisanToplamMaas.toString());

  List<YeniAraba> arabalar = [yeniBmw, yeniMercedes, yeniPorche];

  double yeniBenzinMiktari = 0.0;
  for (int i = 0; i < arabalar.length; i++) {
    yeniBenzinMiktari += arabalar[i].HarcananBenzin();
  }
  print("Harcanan toplam Benzin : " + yeniBenzinMiktari.toString());
}
