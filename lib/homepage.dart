import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _fieldController = TextEditingController();
  List<String> _inputText = ["Empty"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Home Page"),
        leading: Icon(Icons.arrow_back),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        TextField(
          controller: _fieldController,
          decoration: InputDecoration(hintText: "Type Here"),
        ),
        ElevatedButton(
            onPressed: () {
              _inputText.add(_fieldController.text);
              setState(() {});
              // print("Clicked");
            },
            child: Text("Click Here")),
        for (var i in _inputText) Text(i),
        _likeButton(),
        _detailPageButton(),
      ],
    );
  }

  Widget _detailPageButton() {
    return IconButton(onPressed: onPressed, icon: Icon(Icon.))
  }

  Widget _likeButton() {
    return LikeButton();
  }
}
