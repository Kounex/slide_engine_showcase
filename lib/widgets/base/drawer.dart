import 'package:flutter/material.dart';

class DrawerEntry {
  final String title;
  final VoidCallback onTap;

  DrawerEntry({
    required this.title,
    required this.onTap,
  });
}

class BaseDrawer extends StatelessWidget {
  final List<DrawerEntry> entries;

  const BaseDrawer({
    super.key,
    required this.entries,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 128.0,
            color: Theme.of(context).colorScheme.primary,
            child: Icon(
              Icons.compare_arrows,
              size: 92.0,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          const Divider(height: 1),
          for (DrawerEntry entry in entries)
            ListTile(
              title: Text(
                entry.title,
                style: Theme.of(context).textTheme.headline6,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Future.delayed(
                  const Duration(milliseconds: 300),
                  () => entry.onTap(),
                );
              },
            ),
        ],
      ),
    );
  }
}
