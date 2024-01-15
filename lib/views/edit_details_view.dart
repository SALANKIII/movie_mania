import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_mania/controllers/edit_details_view_controller.dart';

class EditDetailsView extends StatelessWidget {
  EditDetailsViewController controller = Get.put(EditDetailsViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditDetailsViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                controller.title,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.save,
                      color: Colors.blue,
                    ))
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AspectRatio(
                          aspectRatio: 2.0 / 3.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              controller.coverImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Colors.black.withOpacity(0.1),
                            ),
                          ),
                        ),
                        CupertinoButton.filled(
                          child: Text("Upload Image"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: IconButton(
                            onPressed: () {},
                            iconSize: 40,
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                        decoration: BoxDecoration(
                          color: Color(0xFF333333),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      Text(
                        "12",
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {},
                            iconSize: 40,
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                        decoration: BoxDecoration(
                          color: Color(0xFF333333),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      child: CupertinoButton(
                        padding: EdgeInsets.zero,
                        color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text("Delete Series"),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
