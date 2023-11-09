

import 'AskereGit.dart';
import 'Cocuk.dart';
import 'EhliyetAl.dart';
import 'KlubeGit.dart';

class AkilliCocuk extends Cocuk implements AskereGit, EhliyetAl, KlubeGit {
  @override
  askereGit(String adi) {
    print(adi + " askere gidiyor");
  }

  @override
  ehliyetAl(String adi) {
    print(adi + " ehliyet alıyor");
  }

  @override
  klubeGit(String adi) {
    print(adi + "klube gidiyor");
  }
}
