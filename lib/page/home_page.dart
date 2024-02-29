import 'package:flutter/material.dart';
import 'package:flutter_tasklist_app/page/add_task_page.dart';
import 'package:flutter_tasklist_app/page/detail_task_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Appbar
        appBar: AppBar(
          title: const Text('Flutter Tasklist App'),
          elevation: 5,
          backgroundColor: Colors.blue[500],
        ),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const DetailTaskPage();
                }));
              },
              child: Card(
                child: ListTile(
                  title: Text('Task $index'),
                  subtitle: Text('Description $index'),
                  trailing: const Icon(Icons.check_circle),
                ),
              ),
            );
          },
          itemCount: 10,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const AddTaskPage();
            }));
          },
          child: const Icon(Icons.add),
        ));
  }
}
