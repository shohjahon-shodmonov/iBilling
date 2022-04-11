import 'package:hive/hive.dart';

part 'invoice_model.g.dart';

@HiveType(typeId: 0)
class InvoiceModel extends HiveObject {
  @HiveField(0)
  String? nameOfService;
  @HiveField(1)
  String? amountOfInoice;
  @HiveField(2)
  String? statusOfInvoice;
  @HiveField(3)
  DateTime? createdDateOfInvoice;
}
