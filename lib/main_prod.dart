
import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'main.dart';

void main() {
  AppEnvironment.setupEnv(Environment.prod);
  runApp(const MyApp());
}