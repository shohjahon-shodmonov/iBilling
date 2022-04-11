import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ibilling/core/components/router.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/model/contract/contract_model.dart';
import 'package:ibilling/model/invoice/invoice_model.dart';
import 'package:ibilling/screens/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ContractsModelAdapter());
  await Hive.openBox<ContractsModel>("contractsBox");
  Hive.registerAdapter(InvoiceModelAdapter());
  await Hive.openBox<InvoiceModel>("invoiceBox");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final RouteGenerator _router = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iBilling',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: ColorConstants.kPrimaryBgColor,
      ),
      initialRoute: '/',
      onGenerateRoute: _router.routeGenerate,
    );
  }
}
