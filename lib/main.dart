import 'package:app_permission/views/camera_permission.dart';
import 'package:app_permission/views/check_status.dart';
import 'package:app_permission/views/homepage.dart';
import 'package:app_permission/views/location_permission.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => const HomePage(),
        'camera_permission': (context) => const CameraPermission(),
        'location_permission': (context) => const LocationPermission(),
        'check_status': (context) => const CheckStatus(),
      },
    ),
  );
}
