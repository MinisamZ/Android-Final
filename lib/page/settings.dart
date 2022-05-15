import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.black87,
        shadowColor: Colors.white,
      ),
      body: ListView(
        children:  <Widget>[
          ListTile(
            leading: Icon(Icons.language),
            onTap: (){
              print('324');
            },
            title: Text('Язык',
              style: TextStyle(fontSize: 20),),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Страна',
              style: TextStyle(fontSize: 20),),
          ),
          ListTile(
            leading: Icon(Icons.currency_exchange,),
            title: Text('Валюта',
              style: TextStyle(fontSize: 20),),
          ),
          ListTile(
            leading: Icon(Icons.password,),
            title: Text('Пароль',
              style: TextStyle(fontSize: 20),),
          ),
          ListTile(
            leading: Icon(Icons.calendar_month,),
            title: Text('Дата начала месяца',
              style: TextStyle(fontSize: 20),),
      ),
          ListTile(
            leading: Icon(Icons.help_center,),
            title: Text('Поддержка',
            style: TextStyle(fontSize: 20),),
          ),
          ListTile(
            leading: Icon(Icons.info,),
            title: Text('О программе',
              style: TextStyle(fontSize: 20),),
          ),
        ],
      )

      // Center(
      //   child: Text ('Settings screen', style: TextStyle(fontSize: 40)),
      // ),
    );
  }
}
