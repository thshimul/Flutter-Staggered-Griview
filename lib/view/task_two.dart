// ignore_for_file: prefer_const_constructors


// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../controller/controller.dart';
import '../route/route.dart';
class TaskTwo extends StatelessWidget {
   TaskTwo( {super.key});
   TaskController controller=Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return  Obx(
        ()=> WillPopScope(
            onWillPop: () {
              Get.offAndToNamed(RouteManager.home);
              return Future.value(true);
            },
            child: SafeArea(
                child:RefreshIndicator(
                    onRefresh: () {
                      controller.getData();
                      return Future.value(true);
                    },
                    child:Scaffold(
                    appBar: AppBar(),
                        body: SingleChildScrollView(
                          physics: AlwaysScrollableScrollPhysics(),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            controller.isLoading.value==true ?
                                controller.dataList.isNotEmpty?
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                                  StaggeredGrid.count(
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 4,
                                    crossAxisSpacing: 4,
                                children: [
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                border: Border.all(color: Colors.black54,
                                                    width: 2)

                            ),
                                      child: Center(child: Text(controller.dataList[0].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black54,
                                              width: 2)
                                      ),
                                      child: Center(child: Text(controller.dataList[1].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black54,
                                              width: 2)
                                      ),
                                      child: Center(child: Text(controller.dataList[2].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 2,
                                    mainAxisCellCount: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black54,
                                              width: 2)
                                      ),
                                      child: Center(child: Text(controller.dataList[3].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                         border: Border.all(color: Colors.black54,
                                           width: 2
                                         )
                                      ),
                                      child: Center(child: Text(controller.dataList[4].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black54,
                                              width: 2
                                          )
                                      ),
                                      child: Center(child: Text(controller.dataList[5].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black54,
                                              width: 2


                                          )
                                      ),
                                      child: Center(child: Text(controller.dataList[6].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black54,
                                              width: 2
                                          )
                                      ),
                                      child: Center(child: Text(controller.dataList[7].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black54,
                                              width: 2
                                          )

                                      ),
                                      child: Center(child: Text(controller.dataList[8].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black54,
                                              width: 2
                                          )
                                      ),
                                      child: Center(child: Text(controller.dataList[9].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black54,
                                              width: 2
                                          )
                                      ),
                                      child: Center(child: Text(controller.dataList[10].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black54,
                                              width: 2

                                          )
                                      ),
                                      child: Center(child: Text(controller.dataList[11].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 2,
                                    mainAxisCellCount: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black54,
                                              width: 2)
                                      ),
                                      child: Center(child: Text(controller.dataList[12].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black54,
                                              width: 2
                                          )
                                      ),
                                      child: Center(child: Text(controller.dataList[13].toString())),
                                    ),
                                  ),
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black54,
                                              width: 2
                                          )
                                      ),
                                      child: Center(child: Text(controller.dataList[14].toString())),
                                    ),
                                  ),
                                ],
                                  )
                              ],
                            ): Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(child: Text("No data found , please reload sometimes api not working as it is free api. ")),
                            ):
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(child: Text("Please wait data in coming ")),
                            )
                          )
                        ))) ),
      ),
    );



  }


}
