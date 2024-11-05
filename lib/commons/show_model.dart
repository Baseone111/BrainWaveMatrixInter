import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewTask extends StatelessWidget {
  const AddNewTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Text(
            'New Task  ',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 1.3,
          ),
          Text(
            'Task Title',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          TextField()
        ],
      ),
    );
  }
}
