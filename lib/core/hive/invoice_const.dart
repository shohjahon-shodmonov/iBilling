import 'package:hive/hive.dart';
import 'package:ibilling/model/invoice/invoice_model.dart';

class BoxesInvoice {
  static Box<InvoiceModel> getInvoice() => Hive.box<InvoiceModel>('invoiceBox');
}
