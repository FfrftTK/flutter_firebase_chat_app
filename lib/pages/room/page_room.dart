import 'package:chat_app/entities/entities.dart';
import 'package:chat_app/repositories/repositories.dart';
import 'package:chat_app/states/states.dart';
import 'package:chat_app/utils/utils.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class PageRoom extends StatelessWidget {
  const PageRoom._();

  static const routeName = '/room';

  static Widget wrapped<T extends RoomRepository>() {
    final room = Get.arguments;
    if (room == null) {
      return const Scaffold(
        body: Center(
          child: Text('This is invalid room.'),
        ),
      );
    }
    return StateNotifierProvider<RoomStateController, RoomState>(
      create: (context) {
        return RoomStateController<T>(room);
      },
      child: const PageRoom._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final roomStateController =
        Provider.of<RoomStateController>(context, listen: true);
    final messages =
        context.select<RoomState, List<EAppMessage>>((state) => state.messages);
    final users =
        context.select<RoomState, List<EAppUser>>((state) => state.users);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(roomStateController.room.name),
      ),
      body: CustomMultiChildLayout(
        delegate: _FooterLayoutDelegate(MediaQuery.of(context).viewInsets),
        children: <Widget>[
          LayoutId(
            id: _FooterLayout.body,
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final posterName = users
                        .firstWhere(
                          (e) => e.id == messages[index].posterId,
                          orElse: () => null,
                        )
                        ?.id
                        ?.substring(0, 4) ??
                    'unknown user';
                return Column(
                  children: <Widget>[
                    ListTile(
                      leading: const CircleAvatar(),
                      title: Text(
                        '$posterName : '
                        '${messages[index].postedAt.toMessageDateFormat()}',
                      ),
                      subtitle: Text(messages[index].message),
                    ),
                    const Divider(),
                  ],
                );
              },
            ),
          ),
          LayoutId(
            id: _FooterLayout.footer,
            child: MessagePostForm(
              onValidationPassed: roomStateController.postMessage,
              onValidationFailed: (input) {},
              // No validation
              validator: (input) => null,
            ),
          ),
        ],
      ),
    );
  }
}

enum _FooterLayout {
  footer,
  body,
}

class _FooterLayoutDelegate extends MultiChildLayoutDelegate {
  _FooterLayoutDelegate(this.viewInsets);

  final EdgeInsets viewInsets;

  @override
  void performLayout(Size size) {
    final x = Size(size.width, size.height + viewInsets.bottom);

    // Footer constraint
    final footer = layoutChild(_FooterLayout.footer, BoxConstraints.loose(x));

    final bodyConstraints = BoxConstraints.tightFor(
      height: x.height - (footer.height + viewInsets.bottom),
      width: x.width,
    );

    // Body constraint
    final body = layoutChild(_FooterLayout.body, bodyConstraints);

    positionChild(_FooterLayout.body, Offset.zero);
    positionChild(_FooterLayout.footer, Offset(0, body.height));
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
