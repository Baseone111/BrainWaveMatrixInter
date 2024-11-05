import 'package:flutter/material.dart';
import 'package:to__do_list_app/colors/app_colors.dart';

import '../commons/show_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textHolder,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AppColors.halfpurple,
        elevation: 0,
        title: ListTile(
          leading: CircleAvatar(
            backgroundColor: AppColors.bestLiked,
            radius: 25,
          ),
          title: Text(
            'I\'m',
            style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
          ),
          subtitle: const Text(
            'opio philbert',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.calendar_month,
                      color: AppColors.bestLiked,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notification_important,
                      color: AppColors.bestLiked,
                    ))
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('Today\'s Task'), Text('Wenesday,11 march')],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.bestLiked,
                    foregroundColor: AppColors.bestLiked,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () => showModalBottomSheet(
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    context: context,
                    builder: (context) => AddNewTask()),
                child: Text(
                  '+ New Task',
                  style: TextStyle(color: AppColors.halfpurple),
                ))
          ],
        ),
      ),
    );
  }
}
