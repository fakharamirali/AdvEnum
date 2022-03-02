class EnumIndex {
  dynamic value;
  String? label;
  String? of;

  EnumIndex(this.value, [this.label = null, this.of = null]);

  String toString() {
    if (value is double) {
      if (value.floor() == value) value = value.floor();
    }
    if (of != null) {
      if (label != "") return "<$label from $of>";
      return "<Index $value of $of>";
    }

    return "<Index $value>";
  }
}

class BaseEnum {
  List indexes = [];
  Map<double, EnumIndex> values = Map();
  String? name = "";
  double _lv = -1;

  EnumIndex Var({double? index, String label = ""}) {
    if (index == null) {
      _lv = _lv.floorToDouble();
      _lv += 1;
      index = _lv;
    } else {
      if (index is num) {
        _lv = index;
      }
    }

    var i = EnumIndex(index, label, name!);
    indexes.add(index);
    values[index] = i;
    return i;
  }

  EnumIndex Sub({double? index, String label = ""}) {
    if (index == null) {
      _lv += .1;
      index = _lv;
    } else {
      if (index is num) {
        _lv = index;
      }
    }

    var i = EnumIndex(index, label, name!);
    indexes.add(index);
    values[index] = i;
    return i;
  }

  BaseEnum([this.name]);
}
