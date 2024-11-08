import 'package:employee_management/domain/employee_model.dart';
import 'package:flutter/material.dart';

class ScreenEmployeeHome extends StatefulWidget {
  const ScreenEmployeeHome({super.key});

  @override
  State<ScreenEmployeeHome> createState() => _ScreenEmployeeHomeState();
}

class _ScreenEmployeeHomeState extends State<ScreenEmployeeHome> {
  final employeeNameController = TextEditingController();
  final employeeDepartmentController = TextEditingController();
  final employeeDesignationController = TextEditingController();
  List<EmployeeModel> stockModelList = [
    EmployeeModel(
        employeeId: '1',
        employeeName: 'Marc',
        employeeDepartment: 'AI',
        employeeDesignation: 'AP',
        userId: '1'),
    EmployeeModel(
        employeeId: '2',
        employeeName: 'Edi',
        employeeDepartment: 'EC',
        employeeDesignation: 'AP',
        userId: '1'),
    EmployeeModel(
        employeeId: '3',
        employeeName: 'Bob',
        employeeDepartment: 'CS',
        employeeDesignation: 'AP',
        userId: '1'),
  ];
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Employee Management App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: employeeNameController,
                            decoration: const InputDecoration(
                                hintText: 'Employee Name',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              // Write the code to add the .....
                            },
                            child: const Text('Add'))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: employeeDepartmentController,
                            decoration: const InputDecoration(
                                hintText: 'Department',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: employeeDesignationController,
                            decoration: const InputDecoration(
                                hintText: 'Designation',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .19,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .8,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                        onTap: () {
                          //Write code to change status
                        },
                        leading: Text((index + 1).toString()),
                        title: Text(
                          stockModelList[index].employeeName,
                          style: const TextStyle(
                              fontSize: 23, color: Colors.purple),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                                'Department-${stockModelList[index].employeeDepartment}/',
                                style: const TextStyle(
                                    fontSize: 19, color: Colors.pink)),
                            Text(
                                'Designation-${stockModelList[index].employeeDesignation}',
                                style: const TextStyle(
                                    fontSize: 19, color: Colors.pink)),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  //Write the code to delete .....
                                },
                                icon: const Icon(Icons.delete))
                          ],
                        ));
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: stockModelList.length,
                ))
          ],
        ),
      ),
    );
  }
}
