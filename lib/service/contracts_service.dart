import 'package:ibilling/core/hive/contract_const.dart';
import 'package:ibilling/model/contract/contract_model.dart';

Future addContracts(
  String name,
  String amount,
  String lastInvoice,
  String numberOfInvoices,
  String litso,
  String adress,
  String inn,
  String status,
) async {
  final myContract = ContractsModel()
    ..name = name
    ..amount = amount
    ..lastInvoice = lastInvoice
    ..numberOfInvoices = numberOfInvoices
    ..createDate = DateTime.now()
    ..litso = litso
    ..adress = adress
    ..inn = inn
    ..status = status;

  final box = BoxesContract.getContracts();
  box.add(myContract);
}
