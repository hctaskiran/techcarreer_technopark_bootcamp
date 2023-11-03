
main() {
  Araba a = Araba();
  a.marka = "Opel";
  a.model = 'Vectra';
  a.kasa = 'B';
  a.motor = 2.0;
  a.yil = 1997;
  a.km = 177.860;
  a.hasarKaydiVar = false;
  a.gidiyor("${a.marka} ${a.model}");
}

class Araba {
  String marka = '';
  String model = '';
  String kasa = '';
  double motor = 0;
  int yil = 0;
  double km = 0;
  bool hasarKaydiVar = false;
  gidiyor(String isim) {
    hasarKaydiVar == true ? "var" : "yok";
    print("$isim isimli araba gidiyor. Hasar kaydi: " "$hasarKaydiVar");
  }
}
