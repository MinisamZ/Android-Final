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
    Profile(),
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
        onPressed: (){
          counter++;
          print('counter = ' + counter.toString());
        },
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin:10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState((){
                        currentScreen =MyMoney();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_balance_wallet,
                          color: currentTab == 0 ? Colors.blue :Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState((){
                        currentScreen =ExpensesIncomes();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard_customize,
                          color: currentTab == 1 ? Colors.blue :Colors.grey,
                        ),
                      ],
                    ),
                  )

                ],
              ),
              // Левые эконки меню
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState((){
                        currentScreen =Profile();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 3 ? Colors.blue :Colors.grey,
                        ),
                        Text('Profile',
                          style:  TextStyle(
                              color: currentTab == 3 ? Colors.blue :Colors.grey
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState((){
                        currentScreen =Settings();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color: currentTab == 4 ? Colors.blue :Colors.grey,
                        ),
                        Text('Settings',
                          style:  TextStyle(
                              color: currentTab == 4 ? Colors.blue :Colors.grey
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
