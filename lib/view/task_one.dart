// ignore_for_file: prefer_const_constructors


// ignore: must_be_immutable
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
class TaskOne extends StatelessWidget {
  TaskOne( {super.key});

  TaskController controller=Get.put((TaskController()));


  @override
  Widget build(BuildContext context) {
    return Obx(
          ()=>WillPopScope(
        onWillPop: () {
          Get.back();
          return Future.value(true);
        },
        child: SafeArea(
            child:RefreshIndicator(
                onRefresh: () {

                  return Future.value(true);
                },
                child:Scaffold(
                  backgroundColor: Colors.grey,
                  appBar: AppBar(),
                    body: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment:controller.selectedLanguageDropdown.value=="English"? Alignment.topLeft:Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0, right: 20,top: 20),
                              child: Container(
                                width: Get.width*.38,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.grey)),
                                child: Padding(
                                    padding: const EdgeInsets.only(left: 3),
                                    child: DropdownButton2(
                                        icon: Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: Icon(Icons.keyboard_arrow_down,
                                              color: Colors.black),
                                        ),
                                        hint: Text(
                                          'English',
                                        ),
                                        onChanged: (newValue) {
                                          controller.selectedLanguageDropdown.value =
                                              newValue.toString();
                                          controller.update();
                                        },
                                        value: controller.selectedLanguageDropdown.value,
                                        underline: SizedBox(),
                                        isExpanded: true,
                                        // Down Arrow Icon

                                        items: [
                                          for (var data
                                          in controller.selectedLanguageDropdownList)
                                            DropdownMenuItem(
                                              value: data,
                                              child: Text(
                                                data,
                                              ),
                                            )
                                        ]))),
                              ),
                          ),
                          Visibility(
                            visible: controller.selectedLanguageDropdown.value=="English",
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0, right: 20,top: 20),
                              child: Container(
                                  width: Get.width,
                                  height: 60,

                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                     ),
                                  child: Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            maxRadius: 20,
                                            backgroundImage: AssetImage(
                                              ("assets/images/photo.png"),
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: Get.size.width * 0.6,
                                                    child: Text("Mahmud Hasan",
                                                      style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontWeight:FontWeight.w600,
                                                      fontSize: 14,

                                                    ),
                                                       ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: Get.size.width * 0.65,
                                                    child: Text("Phone Number:12345678912",
                                                      style: TextStyle(
                                                        color: Colors.black54,
                                                        fontWeight:FontWeight.w400,
                                                        fontSize: 14,

                                                      ),
                                                        ),
                                                  ),

                                                ],
                                              ),


                                            ],
                                          ),
                                        ],
                                      ),
                                  )),
                            ),
                          ),
                          Visibility(
                            visible: controller.selectedLanguageDropdown.value=="عربي",
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0, right: 20,top: 20),
                              child: Container(
                                  width: Get.width,
                                  height: 60,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 3),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [


                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: Get.size.width * 0.6,
                                                  child: Text("محمود حسن",
                                                    textDirection: TextDirection.rtl,
                                                    style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontWeight:FontWeight.w600,
                                                      fontSize: 14,

                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: Get.size.width * 0.65,
                                                  child: Text("رقم الهاتف: ١٢٣٤٥٦٧٨٩١٢",
                                                    textDirection: TextDirection.rtl,
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight:FontWeight.w400,
                                                      fontSize: 14,


                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),


                                          ],
                                        ),
                                        SizedBox(width: 5),
                                        CircleAvatar(
                                          maxRadius: 20,
                                          backgroundImage: AssetImage(
                                            ("assets/images/photo.png"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),

                        ],
                      ),
                    ))) ),

      ),
    );


  }


}
