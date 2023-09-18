import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'core/di/di_container.dart';
import 'features/app/presentation/pages/app.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp( const App());
}
