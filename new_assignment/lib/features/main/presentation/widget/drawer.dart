import 'package:flutter/material.dart';
import 'package:new_assignment/gen/assets.gen.dart';

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      backgroundColor: const Color(0xFFEEF4FE),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              color: const Color(0xFF1F74EC),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(
                        Assets.icons.avatar.path), // replace with your asset
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Swati',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Personal',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'swati@cstech.in',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            // Main List Items
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerItem(
                      icon: Assets.icons.rocket.path, label: 'Getting Started'),
                  DrawerItem(
                      icon: Assets.icons.syncData.path, label: 'Sync Data'),
                  DrawerItem(
                      icon: Assets.icons.gamification.path,
                      label: 'Gamification'),
                  DrawerItem(icon: Assets.icons.logs.path, label: 'Send Logs'),
                  DrawerItem(
                      icon: Assets.icons.setting.path, label: 'Settings'),
                  DrawerItem(icon: Assets.icons.help.path, label: 'Help?'),
                  DrawerItem(
                      icon: Assets.icons.cancelSubscription.path,
                      label: 'Cancel Subscription'),
                  SizedBox(
                    height: 5,
                  ),
                  // Divider Section
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      'App Info',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                  ),

                  DrawerItem(
                      icon: Assets.icons.aboutUs.path, label: 'About Us'),
                  DrawerItem(
                      icon: Assets.icons.piracyPolicy.path,
                      label: 'Privacy Policy'),
                  DrawerItem(
                      icon: Assets.icons.version.path,
                      label: 'Version 1.01.52'),
                  DrawerItem(icon: Assets.icons.share.path, label: 'Share App'),
                  DrawerItem(icon: Assets.icons.logout.path, label: 'Logout'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String icon;
  final String label;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Card(
        elevation: 1,
        child: Container(
            // height: 25,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(14)),
            width: 50,
            child: Image.asset(icon, color: Colors.black87)),
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
