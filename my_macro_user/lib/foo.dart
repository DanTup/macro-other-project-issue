import 'package:my_macro/with_method.dart';

void main() {
  A().hello();
}

@WithMethod('hello')
class A {}
