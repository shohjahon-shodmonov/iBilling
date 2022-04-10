import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/appbar.dart';
import 'package:ibilling/screens/new/new_components/text.dart';
import 'package:ibilling/screens/new/new_components/textfield_decor.dart';

class NewInvoice extends StatelessWidget {
  NewInvoice({Key? key}) : super(key: key);

  final TextEditingController _serviceController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _invoiceStatusController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBarWidget.appbar(context, "New Invoice", true),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text("Name of service"),
            TextFormField(
              controller: _serviceController,
              cursorColor: Colors.white,
              decoration: textFieldDecor(),
              style: const TextStyle(color: Colors.white),
            ),
            text("Amount of the invoice"),
            TextFormField(
              controller: _amountController,
              cursorColor: Colors.white,
              decoration: textFieldDecor(),
              style: const TextStyle(color: Colors.white),
            ),
            text("Status of the invoice"),
            TextFormField(
              controller: _invoiceStatusController,
              cursorColor: Colors.white,
              decoration: textFieldDecor(),
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
            SizedBox(
              height: getHeight(55),
              width: getWidth(360),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Save invoice",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: ColorConstants.textCOlorDarkDreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
