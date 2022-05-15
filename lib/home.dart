import 'package:flutter/material.dart';
import 'page/dashboard.dart';
import 'page/chat.dart';
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
    Dashboard(),
    Chat(),
    Profile(),
    Settings()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

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
                        currentScreen =Dashboard();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTab == 0 ? Colors.blue :Colors.grey,
                        ),
                        Text('Dashboard',
                          style:  TextStyle(
                              color: currentTab == 0 ? Colors.blue :Colors.grey
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState((){
                        currentScreen =Chat();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          color: currentTab == 1 ? Colors.blue :Colors.grey,
                        ),
                        Text('Chat',
                          style:  TextStyle(
                              color: currentTab == 1 ? Colors.blue :Colors.grey
                          ),
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
