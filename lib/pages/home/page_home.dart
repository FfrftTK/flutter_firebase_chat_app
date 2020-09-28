import 'package:chat_app/entities/entities.dart';
import 'package:chat_app/pages/pages.dart';
import 'package:chat_app/states/states.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class PageHome extends StatelessWidget {
  const PageHome();
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final homeStateController =
        Provider.of<HomeStateController>(context, listen: true);
    final rooms =
        context.select<HomeState, List<EAppRoom>>((state) => state.rooms);

    homeStateController.updateHome();

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: homeStateController.createRoom,
          )
        ],
      ),
      body: ListView.builder(
          itemCount: rooms.length,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                ListTile(
                  leading: const CircleAvatar(),
                  title: Text(rooms[index].name),
                  onTap: () {
                    Get.toNamed(PageRoom.routeName, arguments: rooms[index]);
                    homeStateController.updateHome();
                  },
                ),
                const Divider(),
              ],
            );
          }),
    );
  }
}
