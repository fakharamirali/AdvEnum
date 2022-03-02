import 'package:AdvEnum/AdvEnum.dart';

class Status{
  static BaseEnum e = BaseEnum("Status");
  EnumIndex Success  = e.Var(index: 1, label: "Success");
  EnumIndex Init = e.Var(index: 1.1, label: "Initialize new object");
  EnumIndex Tested = e.Var(index:1.2, label: "Tested");
  EnumIndex Failed = e.Var(index: 2, label: "Failed");
  EnumIndex Abort = e.Var(index: 2.1, label: "Abort");
  EnumIndex Rollback = e.Var(index:2.2 ,label: "Rollback");
  EnumIndex Warning = e.Var(index: 3, label: "Warning");
  EnumIndex Replace = e.Var(index: 3.1, label: "Replace");
  static Status instance = Status();
}

main(){
  print(Status.instance.Abort.value);
  print(Status.instance.Rollback.value);
}
