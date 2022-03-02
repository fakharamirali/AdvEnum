import 'package:AdvEnum/AdvEnum.dart';
import 'package:test/test.dart';

dynamic WrapExpect(dynamic actual, dynamic matcher, {String? reason, skip}) {
  return () {
    expect(actual, matcher, reason: reason, skip: skip);
  };
}

void main() {
  group('A group of tests', () {
    BaseEnum baseEnum = BaseEnum("My Enum");
    EnumIndex a = baseEnum.Var(label: "Home");
    EnumIndex b = baseEnum.Sub();
    EnumIndex c = baseEnum.Sub();
    EnumIndex d = baseEnum.Var();
    test("Testing Value EnumIndex", () {
      expect(a.value, equals(0));
    });
    test("Testing toString() of EnumIndex", () {
      expect(a.toString(), equals("<Home from My Enum>"));
    });
    test("Testing indexes of BaseEnum",
        WrapExpect(baseEnum.indexes, equals([.0, .1, .2, 1.0])));

    test("Testing values of BaseEnum",
        WrapExpect(baseEnum.values, equals({.0: a, .1: b, .2: c, 1.0: d})));
    test("Testing Value of sub1", WrapExpect(b.value, equals(.1)));
    test("Testing Value of sub1", WrapExpect(c.value, equals(.2)));
    test("Testing Value of Var2", WrapExpect(d.value, equals(1.0)));
  });
}
