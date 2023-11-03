
main () {

  Matematik m = Matematik();
    print('Toplam: ' "${m.topla(12,20)}");
    print('Carpim: ' "${m.carpma(3,5)}");
    print('Bolme Sonucu: ' "${m.bolme(15, 5)}");
  
    yasBulma y = yasBulma();
    print("${y.yasBul(2001)} yasindasiniz");
  }


class yasBulma {
    yasBul(int dogumYili) {
      int sonuc = 0;
      sonuc = 2023 - dogumYili;
      return sonuc;
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