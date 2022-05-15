import 'package:flutter/material.dart';

class MyMoney extends StatefulWidget {
  const MyMoney({Key? key}) : super(key: key);

  @override
  State<MyMoney> createState() => _MyMoneyState();
}

class _MyMoneyState extends State<MyMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My money'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text ('My money screen', style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
