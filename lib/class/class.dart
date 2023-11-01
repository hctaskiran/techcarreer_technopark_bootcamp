// ignore_for_file: camel_case_types, avoid_print

main () {
  
  
  Araba a = Araba();
  a.marka = "Opel";
  a.model = 'Vectra';
  a.kasa = 'B';
  a.motor = 2.0;
  a.yil = 1997;
  a.km = 177.860;
  a.hasarKaydiVar = false;
  a.gidiyor("${a.marka} ${a.model}");
  
  
  Matematik m = Matematik();
    print('Toplam: ' "${m.topla(12,20)}");
    print('Carpim: ' "${m.carpma(3,5)}");
    print('Bolme Sonucu: ' "${m.bolme(15, 5)}");
  
    yasBulma y = yasBulma();
    print("${y.yasBul(2001)} yasindasiniz");
  }
  
  class Araba {
    String marka = '';
    String model = '';
    String kasa = '';
    double motor = 0;
    int yil =  0;
    double km = 0;
    bool hasarKaydiVar = false;
    gidiyor(String isim) {
      print("$isim isimli araba gidiyor. Hasar kaydi: " "$hasarKaydiVar");
      } 
    }

  class Matematik {
    topla(int sayi1, int sayi2) {
      int sonuc = 0;
      sonuc = sayi1 + sayi2;
        return sonuc;
    }
    
    carpma(int sayi1, int sayi2) {
      int sonuc = 0;
      sonuc = sayi1 * sayi2;
      return sonuc;
    }
    
    bolme(double sayi1, double sayi2) {
      double sonuc = 0;
      sonuc = sayi1 / sayi2;
      return sonuc;
    }
  }

  class yasBulma {
    yasBul(int dogumYili) {
      int sonuc = 0;
      sonuc = 2023 - dogumYili;
      return sonuc;
    }
  }














