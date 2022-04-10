import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextFormField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                _searchController.clear();
              },
              icon: Icon(Icons.cancel),
            ),
          ),
        ),
      ),
    );
  }
}
