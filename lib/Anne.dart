import "DinleveYazYetenek.dart";
import "Insan.dart";
import "OkuYetenek.dart";

//Anne class Insan classındaki değişken
// ve function lara erişebilir hale geldi.
//multiple inheritance
class Anne extends Insan implements OkuYetenek, DinleveYazYetenek {
  @override
  oku(String adi) {
    print(adi + " okuyor..");
  }

  @override
  dinle(String adi) {
    print(adi + " dinliyor...");
  }

  @override
  yaz(String adi) {
    print(adi + " yaziyor...");
  }
}
