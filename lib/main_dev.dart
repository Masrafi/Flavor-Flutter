
import 'package:flavor_environ/flavor_config.dart';
import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  AppEnvironment.setupEnv(Environment.dev);
  runApp(const MyApp());
}