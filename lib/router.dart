import 'package:chat_app/pages/pages.dart';
import 'package:get/get.dart';

import 'repositories/repositories.dart';

final List<GetPage> getPages = [
  GetPage(name: PageRoot.routeName, page: () => const PageRoot()),
  // home
  GetPage(name: PageHome.routeName, page: () => const PageHome()),
  // auth
  GetPage(name: PageSignUp.routeName, page: () => const PageSignUp()),
  GetPage(name: PageSignIn.routeName, page: () => const PageSignIn()),
  // room
  GetPage(
    name: PageRoom.routeName,
    // TODO(FfrftTK): Inject repository
    page: () => PageRoom.wrapped<RoomRepositoryWithFirebase>(),
  ),
];
//
//typedef WidgetPageBuilder = Widget Function(
//  BuildContext context,
//  RouteSettings settings,
//);
//
//final Map<String, WidgetPageBuilder> argumentRequiredRoutes = {
//  PageRoom.routeName: (context, settings) =>
//      PageRoom.wrapped<RoomRepositoryWithFirebase>(
//          settings.arguments as EAppRoom),
//};
//
//Route<dynamic> onGenerateRoute(RouteSettings settings) {
//  return MaterialPageRoute<void>(
//    builder: (context) =>
//        argumentRequiredRoutes[settings.name](context, settings),
//    settings: settings,
//  );
//}
