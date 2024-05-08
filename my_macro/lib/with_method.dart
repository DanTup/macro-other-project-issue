import 'package:macros/macros.dart';

macro class WithMethod implements ClassDeclarationsMacro {
  final String name;
  const WithMethod(this.name);

  @override
  Future<void> buildDeclarationsForClass(
    ClassDeclaration clazz,
    MemberDeclarationBuilder builder,
  ) async {
    builder.declareInType(DeclarationCode.fromString('''
  void $name() {
    print('$name');
  }
'''));
  }
}
