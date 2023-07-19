// ignore_for_file: prefer_const_constructors


// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_task/route/route.dart';
class Home extends StatelessWidget {
  const Home( {super.key});


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return Future.value(true);
        },
        child: SafeArea(
            child:RefreshIndicator(
                onRefresh: () {

                  return Future.value(true);
                },
                child:Scaffold(
                appBar: AppBar(),
                    body: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [

                            Center(
                              child: Text("Interview Task ",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight:FontWeight.w600,
                                  fontSize: 20,

                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Get.offAndToNamed(RouteManager.taskOne);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:  Colors.greenAccent,//change background color of button
                                foregroundColor: Colors.yellow,//change text
                              ),
                              child: Text("Interview Task One",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight:FontWeight.w600,
                                  fontSize: 20,

                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Get.offAndToNamed(RouteManager.taskTwo);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:  Colors.greenAccent,///change background color of button
                                foregroundColor: Colors.yellow,//change text
                              ),
                              child: Text("Interview Task Two",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight:FontWeight.w600,
                                fontSize: 20,

                              ),
                            ),
                            ),

                          ],
                        ),
                      ),
                    ))) ),
    );


  }


}
