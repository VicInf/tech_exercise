import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tech_exercise/presentation/screens/explore/explore_screen.dart';
import 'package:tech_exercise/presentation/screens/fields/fields_screen.dart';
import 'package:tech_exercise/presentation/screens/message/message_screen.dart';
import 'package:tech_exercise/presentation/screens/profile/profile_screen.dart';
import 'package:tech_exercise/provider/main_screen_state_provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late GlobalKey<ScaffoldState> scaffoldKey;
  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();
    scaffoldKey = GlobalKey<ScaffoldState>();
    pages = [ExploreScreen(), FieldsScreen(), MessageScreen(), ProfileScreen()];
  }

  @override
  Widget build(BuildContext context) {
    final mainScreenStateProvider = Provider.of<MainScreenStateProvider>(
      context,
    );
    final items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.search, size: 30),
        label: 'Explore',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.stadium_outlined, size: 30),
        label: 'Fields',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat_bubble_outline, size: 30),
        label: 'Messages',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_outlined, size: 30),
        label: 'Profile',
      ),
    ];

    return PopScope(
      canPop: false,
      onPopInvoked: (_) {
        if (mainScreenStateProvider.selectedIndex != 0) {
          setState(() {
            mainScreenStateProvider.selectIndex = 0;
          });
        } else {
          SystemChannels.platform.invokeMethod(
            'SystemNavigator.pop',
          ); // Allow pop if already on the first screen
        }
      },
      child: Scaffold(
        key: scaffoldKey,
        // appBar: AppBar(title: Text('Tech Exercise'), centerTitle: true),
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: mainScreenStateProvider.selectedIndex,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          onTap: (i) {
            setState(() {
              mainScreenStateProvider.selectIndex = i;
            });
          },
          backgroundColor: Colors.black,
          items: items,
          type: BottomNavigationBarType.fixed,
        ),
        body: IndexedStack(
          index: mainScreenStateProvider.selectedIndex,
          children: pages,
        ),
      ),
    );
  }
}
