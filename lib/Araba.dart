class Araba {
  String marka = "";
  String model = "";
  int kapiSayisi = 0;
  int pencereSayisi = 0;

  git(String markasi, String modeli) {
    print(markasi + " " + modeli + " gidiyor..");
  }

  markaModelYaz(String markasi, String modeli) {
    print("Arabanın markası : " + markasi + " modeli : " + modeli);
  }
}
