import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_mania/controllers/regist_view_controller.dart';

class RegistView extends StatelessWidget {
  RegistViewController controller = Get.put(RegistViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text("Registration"),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 30, bottom: 20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(
                            controller.profilePicture,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: CupertinoButton.filled(
                            child: Text("Upload Image", style: TextStyle(fontSize: 14),),
                            onPressed: () {},
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 35,
                      left: 35,
                      top: 10,
                      bottom: 10,
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          CupertinoIcons.mail_solid,
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade700),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 35,
                      left: 35,
                      top: 10,
                      bottom: 10,
                    ),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          CupertinoIcons.lock_fill,
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade700),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 35,
                      left: 35,
                      top: 10,
                      bottom: 10,
                    ),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Password again',
                        hintText: 'Enter your password',
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          CupertinoIcons.lock_shield,
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade700),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 35,
                      left: 35,
                      top: 10,
                      bottom: 10,
                    ),
                    child: TextField(
                      obscureText: true,
                      style:
                          TextStyle(color: Colors.white), // Set text color here
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Username',
                        hintText: 'Enter your Username',
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          CupertinoIcons.person_fill,
                          color: Colors.white, // Set prefix icon color here
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade700),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35, right: 35),
                    child: Column(
                      children: [
                        Row(
                          children: [Text("Birthdate", style: TextStyle(color: Colors.white),),
                          SizedBox(width: 230,),
                          IconButton(onPressed: () {
                            
                          }, icon: Icon(Icons.calendar_month, color: Colors.white,))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "orem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et sem faucibus, volutpat ipsum vitae, lobortis orci. Aliquam malesuada elementum neque, vitae rhoncus elit eleifend ac. Aenean est lectus, pretium sed congue quis, vehicula pretium",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: CupertinoButton.filled(
                      child: Text("Registration"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
