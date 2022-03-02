import 'AdvEnum_base.dart';

abstract class AdvEnum {
  late BaseEnum _baseEnum;
  String? name;
  List indexes = [];

  Map<double, EnumIndex> values = {};
  late double index;

  String? label;

  AdvEnum([double? index]) {
    loadBase();
    init();
    setIndex();

    if (index == null) return;
    if (!indexes.contains(index)) throw ArgumentError.value(index);
    this.index = index;
  }

  void init();

  void setIndex() {
    indexes = _baseEnum.indexes;
    values = _baseEnum.values;
  }

  void loadBase() {
    _baseEnum = BaseEnum(name);
  }

  BaseEnum get E => _baseEnum;
  @override
  String toString() {
    return EnumIndex(index, label, name).toString();
  }
}


