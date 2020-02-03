import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return Container(
      color: Color(0xff757575), //전체 색상을 흐리게 주고
      child: Container(
        //좌우 각지게 만들기위해 하나 더 생성
        padding: EdgeInsets.all(20.0),//할일추가 윗부분 padding
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              '할일 추가',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              child: Text(
                '추가',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
               addTaskCallback(newTaskTitle);

              },
            ),
          ],
        ),
      ),
    );
  }
}
