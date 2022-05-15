import 'package:flutter/material.dart';
import 'page/myMoney.dart';
import 'page/expensesIncomes.dart';
import 'page/profile.dart';
import 'page/settings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  int counter = 0;
  final List<Widget> screens = [
    MyMoney(),
    ExpensesIncomes(),
    Instruments(),
    Settings()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = MyMoney();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          counter++;
          print('counter = ' + counter.toString());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // дефолт spaceBetween
            children: <Widget>[
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = MyMoney();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_balance_wallet,
                      color: currentTab == 0 ? Colors.green : Colors.grey,
                      size: 33,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = ExpensesIncomes();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dashboard_customize,
                      color: currentTab == 1 ? Colors.indigo : Colors.grey,
                      size: 33,
                    ),
                  ],
                ),
              ),
              //центр
              Container(
                width: 60,
              ),
              // Левые эконки меню
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = Instruments();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.emoji_objects_outlined,
                      color: currentTab == 3 ? Colors.amber : Colors.grey,
                      size: 33,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = Settings();
                    currentTab = 4;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.settings,
                      color: currentTab == 4 ? Colors.black : Colors.grey,
                      size: 33,

                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
