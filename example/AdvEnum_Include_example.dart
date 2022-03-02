import 'package:AdvEnum/AdvEnum.dart';

class Status extends AdvEnum {
  String? name = "My Enum";
  Status(double index) : super(index);
  static late EnumIndex? Success;
  static late EnumIndex? Init;
  static late EnumIndex? Tested;
  static late EnumIndex? Warning;
  static late EnumIndex? Abort;
  static late EnumIndex? Replace;
  static late EnumIndex? Error;
  static late EnumIndex? Failed;
  static late EnumIndex? Rollback;



  void init() {
    Success = E.Var(index: 1, label: 'Successful');
    Init = E.Sub(label: 'Inited');
    Tested = E.Sub(label: 'Tested');
    Warning = E.Var(label: "Warning");
    Abort = E.Sub(label: "Abort");
    Replace = E.Sub(label: "Replaced Item");
    Error = E.Var(label: "Error");
    Failed = E.Sub(label: "Failed");
    Rollback = E.Sub();
  }
  static var _ = Status(1);
}

void main(){
  Status._;
  print(Status.Failed);
}