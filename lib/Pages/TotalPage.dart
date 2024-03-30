import 'package:flutter/material.dart';
import 'package:get_x/Pages/MyHomePage.dart';
import 'package:get/get.dart';
import 'package:get_x/controllers.dart';

class TotalPage extends StatelessWidget {
  TotalPage({super.key});

  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total items",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(() => Text(
                    "${c.sum.toString()}",
                    style: TextStyle(fontSize: 30, color: Colors.blue),
                  )),
              SizedBox(
                height: 20,
              ),
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
                    onPressed: () => Get.to(MyHomePage()),
                    child: Text(
                      "Go back ",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
