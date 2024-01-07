import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<String> todolist = [];

  TextEditingController todocontroller = TextEditingController();
  SharedPreferences? pref;
  Future<void> initSharedPreferences() async {
    pref = await SharedPreferences.getInstance();
    getTask();
  }

  void addTask(String task) {
    setState(() {
      todolist.add(task);
    });
    saveTak();
  }

  void removeTask(int index) {
    setState(() {
      todolist.removeAt(index);
    });
  }

  void saveTak() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setStringList("todotask", todolist);
    getTask();
  }

  getTask() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      todolist = pref.getStringList("todotask") ?? [];
    });
  }
@override
  void initState() {
    super.initState();
    getTask();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
      ),
      body: ListView.builder(
        itemCount: todolist.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todolist[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => removeTask(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String newTask = await showDialog(
            context: context,
            builder: (BuildContext context) {
              return SimpleDialog(
                title: Text('Add Task'),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      controller: todocontroller,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        addTask(todocontroller.text);
                        todocontroller.clear();
                        Navigator.pop(context);
                      },
                      child: Text('Add'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel'),
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
