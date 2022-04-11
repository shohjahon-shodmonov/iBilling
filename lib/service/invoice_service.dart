import 'package:ibilling/core/hive/contract_const.dart';
import 'package:ibilling/core/hive/invoice_const.dart';
import 'package:ibilling/model/invoice/invoice_model.dart';

Future addInvoice(
  String nameOfService,
  String amountOfInvoice,
  String statusOfInvoice,
) async {
  final myInvoice = InvoiceModel()
    ..nameOfService = nameOfService
    ..amountOfInoice = amountOfInvoice
    ..createdDateOfInvoice = DateTime.now();

  final box = BoxesInvoice.getInvoice();
  box.add(myInvoice);
}
