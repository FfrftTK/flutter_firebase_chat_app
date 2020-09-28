import 'package:chat_app/entities/entities.dart';
import 'package:chat_app/states/user/state_controller_user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer();

  @override
  Widget build(BuildContext context) {
    final userStateController =
        Provider.of<UserStateController>(context, listen: true);
    final currentUser =
        context.select<UserState, EAppUser>((state) => state.currentUser);
    final wp = MediaQuery.of(context).size.width;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                // TODO(FfrftTK): Implement
                CircleAvatar(
                  radius: wp * 0.1,
                ),
                Text(currentUser.email),
                const _SignOutButton(),
              ],
            ),
            decoration: const BoxDecoration(),
          ),
          // TODO(FfrftTK): Implement
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: const Text('Sign out'),
            onTap: userStateController.signOut,
          ),
        ],
      ),
    );
  }
}

class _SignOutButton extends StatelessWidget {
  const _SignOutButton();
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: const Text('Edit profile'),
      onPressed: () {},
    );
  }
}
