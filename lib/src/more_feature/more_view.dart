import 'package:flutter/material.dart';
import 'package:togoparts/src/profile_feature/profile_controller.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  static const routeName = '/more_screen';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          minVerticalPadding: 20,
          shape: const Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          leading: const ImageIcon(
            AssetImage('assets/images/more/rides_icon@1x.png'),
          ),
          title: const Text('Rides'),
          onTap: () =>
              Navigator.pushNamed(context, ProfileController.routeName),
        ),
        ListTile(
          minVerticalPadding: 20,
          shape: const Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          leading: const ImageIcon(
            AssetImage('assets/images/more/magazine_icon@1x.png'),
          ),
          title: const Text('Magazine'),
          onTap: () =>
              Navigator.pushNamed(context, ProfileController.routeName),
        ),
        ListTile(
          minVerticalPadding: 20,
          shape: const Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          leading: const ImageIcon(
            AssetImage('assets/images/more/forum_icon@1x.png'),
          ),
          title: const Text('Forum'),
          onTap: () =>
              Navigator.pushNamed(context, ProfileController.routeName),
        ),
        ListTile(
          minVerticalPadding: 20,
          shape: const Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          leading: const ImageIcon(
            AssetImage('assets/images/more/bike_shops_icon@1x.png'),
          ),
          title: const Text('Bike Shops'),
          onTap: () =>
              Navigator.pushNamed(context, ProfileController.routeName),
        ),
        ListTile(
          minVerticalPadding: 20,
          shape: const Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          leading: const ImageIcon(
            AssetImage('assets/images/more/careers_icon@1x.png'),
          ),
          title: const Text('Careers'),
          onTap: () =>
              Navigator.pushNamed(context, ProfileController.routeName),
        ),
        ListTile(
          minVerticalPadding: 20,
          shape: const Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          leading: const ImageIcon(
            AssetImage('assets/images/more/advertise_icon@1x.png'),
          ),
          title: const Text('Advertise on Togoparts'),
          onTap: () =>
              Navigator.pushNamed(context, ProfileController.routeName),
        ),
        ListTile(
          minVerticalPadding: 20,
          shape: const Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          leading: const ImageIcon(
            AssetImage('assets/images/more/about_icon@1x.png'),
          ),
          title: const Text('About Togoparts'),
          onTap: () =>
              Navigator.pushNamed(context, ProfileController.routeName),
        ),
        ListTile(
          minVerticalPadding: 20,
          leading: const ImageIcon(
            AssetImage('assets/images/more/terms_services_icon@1x.png'),
          ),
          title: const Text('Terms of Service'),
          onTap: () =>
              Navigator.pushNamed(context, ProfileController.routeName),
        ),
      ],
    );
  }
}
