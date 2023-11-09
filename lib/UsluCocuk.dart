
import 'AskereGit.dart';
import 'Cocuk.dart';
import 'EhliyetAl.dart';

class UsluCocuk extends Cocuk implements AskereGit, EhliyetAl {
  @override
  askereGit(String adi) {
    print(adi + " askere gidiyor");
  }

  @override
  ehliyetAl(String adi) {
    print(adi + " askere gidiyor");
  }
}
