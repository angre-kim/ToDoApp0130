import 'package:flutter/material.dart';
import 'package:todoapp0130/widgets/tasks_list.dart';
import 'package:todoapp0130/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  //Widget buildBottomsheet(BuildContext context) {
  //return Container();
//  }
  // Widget buildBottomsheet(BuildContext context) => Container();//위 구문과 같은 기능. arrow function.
  // 또는  아래 onPressed에서

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          //  showModalBottomSheet(context: context, builder:buildBottomsheet);//아래와 같이 수정가능

          showModalBottomSheet(
              context: context,
              isScrollControlled: true, //modal 화면이 full screen 되게
              builder: (context) => SingleChildScrollView(//키보드 위로 창 보이게
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen())));
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            //safearea 대신 padding이 있는 container로 변경
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'ToDoApp',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'sdfsd',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
