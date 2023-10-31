import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes/app/modules/home/Models/Model.dart';
import '../Models/ModelController.dart';


class UserInterface extends StatelessWidget {
  final ModelController controller = Get.put(ModelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Interface'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: controller.models.length,
          itemBuilder: (context, index) {
            Model model = controller.models[index];
            return ListTile(
              title: Text(model.title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('User ID: ${model.userId.toString()}'),
                  Text('ID: ${model.id.toString()}'),
                ],
              ),
              trailing: Text(model.completed ? 'Completed' : 'Incomplete'),
            );
          },
        );
      }),
    );
  }
}