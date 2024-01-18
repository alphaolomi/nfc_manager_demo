import 'package:nfc_manager_demo/view/app.dart';
import 'package:flutter/widgets.dart';
import 'package:sqflite_common/sqflite.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';


void main() async {
  // Init ffi loader if needed.
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

  WidgetsFlutterBinding.ensureInitialized();
  runApp(await App.withDependency());
}
