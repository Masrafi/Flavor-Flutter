import 'package:flutter/material.dart';

enum Environment {dev, prod}
abstract class AppEnvironment {
  static late String baseApiUrl;
  static late String title;
  static late Environment _environment;
  static late Color primaryColor;
  static Environment get environment => _environment;
  static setupEnv(Environment env) {
    _environment = env;
    switch (env) {
      case Environment.dev:
        {
          baseApiUrl = 'dev';
          title = 'Dev';
          primaryColor = Colors.red;
          break;
        }
      case Environment.prod:
        {
          baseApiUrl = 'prod';
          title = 'Prod';
          primaryColor = Colors.purple;
          break;
        }
    }
  }
}