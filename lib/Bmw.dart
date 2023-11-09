

import 'Araba.dart';
import 'CokHizliGit.dart';
import 'DenizdeYuz.dart';
import 'HavadaUc.dart';

class Bmw extends Araba implements DenizdeYuz, HavadaUc, CokHizliGit {
  @override
  cokHizliGit(String marka) {
    print(marka + " çok hızlı gidiyor");
  }

  @override
  denizdeYuz(String marka) {
    print(marka + " denizde yüzüyor...");
  }

  @override
  havadaUc(String marka) {
    print(marka + " havada uçuyor...");
  }
}
