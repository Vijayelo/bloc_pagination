import 'package:flutter/material.dart';
import 'package:ready_pagination/pagination/ui/view/page_screen.dart';
import 'package:ready_pagination/pagination/ui/widgets/post_item_detail_view.dart';

import 'core/services/services_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppServiceLocator.initAppServiceLocator();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostsOverviewScreen(),
      routes: {
        '/userDetailView': (context) => UserDetailView("", "", "", "", ""),
      },
    );
  }
}
