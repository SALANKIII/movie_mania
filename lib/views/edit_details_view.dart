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
                    padding: EdgeInsets.only(left: 20,right: 20,top: 20,),
                    child: TextField(
                      controller: controller.titleController,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.movie),
                        prefixIconColor: Colors.grey,
                        labelText: 'Name',
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
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
                            onPressed: () {
                              controller.csokkentes();
                            },
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
                        controller.seasons.toString(),
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {
                              controller.noveles();
                            },
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
