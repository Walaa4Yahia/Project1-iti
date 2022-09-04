import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled4/screens/profilescreen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
