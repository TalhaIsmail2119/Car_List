import 'package:day_18/car_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Model_demo extends StatelessWidget {
  const Model_demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("CarList")),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: carList.length,
            itemBuilder: (context, index) {
              return ListTile(
                tileColor: (carList[index].id == 1
                    ? Colors.orange
                    : carList[index].id == 2
                        ? Colors.redAccent
                        : carList[index].id == 3
                            ? Colors.white
                            : carList[index].id == 4
                                ? Colors.blueGrey
                                : carList[index].id == 5
                                    ? Colors.green
                                    : carList[index].id == 6
                                        ? Colors.transparent
                                        : carList[index].id == 7
                                            ? Colors.yellowAccent
                                            : Colors.black),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("${carList[index].image}"),
                ),
                title: Text("${carList[index].model_name}"),
                subtitle: Text("${carList[index].description}"),
                trailing: Icon(
                    carList[index].isValid == true
                        ? Icons.inventory
                        : Icons.search,
                    color: carList[index].id == 1
                        ? Colors.grey
                        : carList[index].id == 2
                            ? Colors.tealAccent
                            : carList[index].id == 3
                                ? Colors.deepOrangeAccent
                                : carList[index].id == 4
                                    ? Colors.blue
                                    : carList[index].id == 5
                                        ? Colors.redAccent
                                        : carList[index].id == 6
                                            ? Colors.lightGreenAccent
                                            : carList[index].id == 7
                                                ? Colors.teal
                                                : Colors.black),
              );
            }),
      ),
    );
  }
}
