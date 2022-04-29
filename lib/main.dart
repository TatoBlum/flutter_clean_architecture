import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_my_app/injection.dart';
import 'package:flutter_my_app/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
   configureDependencies(Environment.prod);  

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const AppWidget()));
}
