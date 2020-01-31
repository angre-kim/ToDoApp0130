import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     color: Color(0xff757575),//전체 색상을 흐리게 주고
     child: Container(//각지게 만들기위해 하나 더 생성
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.only(
           topLeft: Radius.circular(20.0),
           topRight: Radius.circular(20.0),
         ),
       ),
     ),
    );
  }
}
