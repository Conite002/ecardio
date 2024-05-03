import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres'),
        // Customize the app bar as needed
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            title: const Text('Compte'),
            leading: const Icon(Icons.account_circle),
            onTap: () {
              // Navigate to account settings screen
            },
          ),
          ListTile(
            title: const Text('Notifications'),
            leading: const Icon(Icons.notifications),
            onTap: () {
              // Navigate to notification settings screen
            },
          ),
          ListTile(
            title: const Text('Confidentialité'),
            leading: const Icon(Icons.privacy_tip),
            onTap: () {
              // Navigate to privacy settings screen
            },
          ),
          ListTile(
            title: const Text('Aide et support'),
            leading: const Icon(Icons.info),
            onTap: () {
              // Navigate to about screen
            },
          ),
        ],
      ),
    );
  }
}
