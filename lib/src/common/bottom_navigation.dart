import 'package:flutter/material.dart';
import 'package:togoparts/src/home/home_controller.dart';
import 'package:togoparts/src/market_feature/market_controller.dart';
import 'package:togoparts/src/more_feature/more_view.dart';
import 'package:togoparts/src/profile_feature/profile_controller.dart';
import 'package:togoparts/src/settings/settings_view.dart';
import 'package:togoparts/src/challenge_feature/challenge_controller.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  static const routeName = '/';

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedItem = 0;
  final List<String> labels = ['Home', 'Challenges', 'Me', 'Market', 'More'];
  List<Widget> tabs = [
    const HomeController(
      url: 'https://www.togoparts.com/',
    ),
    const ProfileController(
      url: 'https://www.togoparts.com/bikeprofile/trides',
    ),
    const ChallengeController(
      url: 'https://www.togoparts.com/marketplace/browse',
    ),
    const MarketController(
      url: 'https://www.togoparts.com/marketplace/create/',
    ),
    const MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(labels[selectedItem]),
        actions: [
          IconButton(
            icon: const ImageIcon(
              AssetImage('assets/images/notification_icon_inactive@1x.png'),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const ImageIcon(
              AssetImage('assets/images/inbox_icon_inactive@1x.png'),
            ),
            onPressed: () {},
          ),
          PopupMenuButton(
            position: PopupMenuPosition.under,
            shape: ShapeBorder.lerp(InputBorder.none, LinearBorder.none, 0),
            icon: const Icon(Icons.more_vert_outlined),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  textStyle: const TextStyle(
                    fontSize: 24,
                  ),
                  value: 0,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            color: Colors.black,
                            icon: const ImageIcon(
                              AssetImage(
                                  'assets/images/more/settings_icon@1x.png'),
                            ),
                            onPressed: () {
                              Navigator.restorablePushNamed(
                                  context, SettingsView.routeName);
                            },
                          ),
                          const Text("Settings"),
                        ],
                      ),
                    ],
                  ),
                )
              ];
            },
          ),
          // IconButton(
          //   icon: const Icon(Icons.more_vert_outlined),
          //   onPressed: () {
          //     Navigator.restorablePushNamed(context, SettingsView.routeName);
          //   },
          // ),
        ],
      ),
      body: tabs[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Theme.of(context).colorScheme.onPrimary,
        unselectedItemColor: Theme.of(context).colorScheme.inversePrimary,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedItem,
        onTap: (index) {
          setState(
            () {
              selectedItem = index;
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wine_bar_rounded),
            label: "CHALLENGE",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: "ME",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "MARKET",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: "MORE",
          ),
        ],
      ),
    );
  }
}
