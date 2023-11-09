

import 'Insan.dart';
import 'OkuYetenek.dart';

class Baba extends Insan implements OkuYetenek {
  @override
  oku(String adi) {
    print(adi + " okuyor...");
  }
}
