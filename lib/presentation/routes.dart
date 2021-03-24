import 'package:flutter/material.dart';
import 'package:hive_flutter/common/route_constants.dart';
import 'package:hive_flutter/presentation/screens/create_record_screen.dart';
import 'package:hive_flutter/presentation/screens/view_record_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> getAll() => {
        RouteList.list: (context) => ViewRecordScreen(),
        RouteList.create: (context) => CreateRecordScreen(),
      };
}
