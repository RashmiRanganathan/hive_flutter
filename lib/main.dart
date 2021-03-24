import 'package:flutter/material.dart';
import 'package:hive_flutter/common/database_util.dart';
import 'package:hive_flutter/presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DatabaseUtil.initDatabase();

  runApp(App());
}
