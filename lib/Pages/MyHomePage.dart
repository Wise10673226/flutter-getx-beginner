import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/Pages/TotalPage.dart';
import 'package:get_x/controllers.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  //calling the controller
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Pens",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                //for spacing
                Expanded(child: Container()),
                //rounded circles
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blueAccent),
                  child: IconButton(
                      onPressed: () => c.incrementPen(),
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.Pens.toString()}",
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blueAccent),
                  child: IconButton(
                      onPressed: () => c.decrementPen(),
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            //books
            Row(
              children: [
                Text(
                  "Books",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                //for spacing
                Expanded(child: Container()),
                //rounded circles
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blueAccent),
                  child: IconButton(
                      onPressed: () => c.increment(),
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.books.toString()}",
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blueAccent),
                  child: IconButton(
                      onPressed: () => c.decrement(),
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  width: 150,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.blue),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () => Get.to(TotalPage()),
                      child: Text(
                        "Total",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
