import 'Araba.dart';
import 'DenizdeYuz.dart';
import 'HavadaUc.dart';

class Mercedes extends Araba implements HavadaUc, DenizdeYuz {
  @override
  denizdeYuz(String marka) {
    print(marka + " denizde yüzüyor");
  }

  @override
  havadaUc(String marka) {
    print(marka + " havada uçuyor");
  }
}
