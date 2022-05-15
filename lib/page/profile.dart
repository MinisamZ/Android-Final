import 'package:flutter/material.dart';

class Instruments extends StatefulWidget {
  const Instruments({Key? key}) : super(key: key);

  @override
  State<Instruments> createState() => _InstrumentsState();
}

class _InstrumentsState extends State<Instruments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instruments'),
        backgroundColor: Colors.amber,
        shadowColor: Colors.white,
      ),
      body: Center(
        child: Text ('Instruments screen', style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
