import 'package:flutter/material.dart';
import 'package:hive_flutter/common/route_constants.dart';
import 'package:hive_flutter/presentation/routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hive Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: Routes.getAll(),
      initialRoute: RouteList.list,
    );
  }
}
