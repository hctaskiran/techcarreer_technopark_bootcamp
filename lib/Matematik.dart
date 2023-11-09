class Matematik {
  //2 tane int tipinde parametre argüman alan
  //adı topla olan bir metod tanımladık
  //geri dönüş tipi de int olan bir metod
  topla(int sayi1, int sayi2) {
    int sonuc = 0;
    sonuc = sayi1 + sayi2;
    return sonuc;
  }

  cikar(int sayi1, int sayi2) {
    return sayi1 - sayi2;
  }

  carp(int sayi1, int sayi2) {
    return sayi1 * sayi2;
  }

  bol(int sayi1, int sayi2) {
    return sayi1 / sayi2;
  }
}
