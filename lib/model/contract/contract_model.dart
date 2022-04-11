import 'package:hive/hive.dart';

part 'contract_model.g.dart';

@HiveType(typeId: 0)
class ContractsModel extends HiveObject {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? amount;
  @HiveField(2)
  String? lastInvoice;
  @HiveField(3)
  String? numberOfInvoices;
  @HiveField(4)
  DateTime? createDate;
  @HiveField(5)
  String? litso;
  @HiveField(6)
  String? adress;
  @HiveField(7)
  String? inn;
  @HiveField(8)
  String? status;
}
