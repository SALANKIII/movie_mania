import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_mania/views/details_view.dart';
import 'package:movie_mania/views/edit_details_view.dart';
import 'package:movie_mania/views/home_view.dart';

void main() {
  runApp(GetMaterialApp(
    home: EditDetailsView(),
    debugShowCheckedModeBanner: false,
  ));
}