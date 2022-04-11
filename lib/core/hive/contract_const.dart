import 'package:hive/hive.dart';
import 'package:ibilling/model/contract/contract_model.dart';

class BoxesContract {
  static Box<ContractsModel> getContracts() =>
      Hive.box<ContractsModel>('contractsBox');
}
