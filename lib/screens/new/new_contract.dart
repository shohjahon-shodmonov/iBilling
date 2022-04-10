import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/appbar.dart';
import 'package:ibilling/screens/new/new_components/text.dart';
import 'package:ibilling/screens/new/new_components/textfield_decor.dart';

class NewContract extends StatelessWidget {
  NewContract({Key? key}) : super(key: key);

  final TextEditingController _litsoController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _adressController = TextEditingController();
  final TextEditingController _innController = TextEditingController();
  final TextEditingController _statusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget.appbar(context, "New Contract", false),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text("Лицо"),
            TextFormField(
              controller: _litsoController,
              cursorColor: Colors.white,
              decoration: textFieldDecor(
                  suffixIcon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.white,
              )),
              style: const TextStyle(color: Colors.white),
            ),
            text("Fisher's full name"),
            TextFormField(
              controller: _nameController,
              cursorColor: Colors.white,
              decoration: textFieldDecor(),
              style: const TextStyle(color: Colors.white),
            ),
            text("Adress of the organization"),
            TextFormField(
              controller: _adressController,
              cursorColor: Colors.white,
              decoration: textFieldDecor(),
              style: const TextStyle(color: Colors.white),
            ),
            text("ИНН"),
            TextFormField(
              controller: _innController,
              cursorColor: Colors.white,
              decoration: textFieldDecor(
                suffixIcon: const Icon(
                  Icons.help,
                  color: ColorConstants.textColorInCardGrey,
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            text("Status of the contract"),
            TextFormField(
              controller: _statusController,
              cursorColor: Colors.white,
              decoration: textFieldDecor(
                suffixIcon: const Icon(
                  Icons.arrow_drop_down_circle,
                  color: Colors.white,
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
            SizedBox(
              height: getHeight(55),
              width: getWidth(360),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Save contract",
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
