import 'package:untitled4/untitled4.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
  print(NumberToWord().convert('',100204300));
  print(NumberToWord().convert('',1350000));
  print(NumberToWord().convert('',102000300));
  print(NumberToWord().convert('',504020));
  print(NumberToWord().convert('',125000300));
  print(NumberToWord().convert('',42020));
  print(NumberToWord().convert('',32042020));
}
