import 'package:flutter/material.dart';
import 'package:learn_flutter/constant/Colors.dart';
import 'package:learn_flutter/model/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo toDo;
  final onToDoChanged;
  final onDeleteItem;

  const TodoItem(
      {super.key,
      required this.toDo,
      required this.onDeleteItem,
      required this.onToDoChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(toDo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          toDo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          toDo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: toDo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: const Icon(Icons.delete),
            onPressed: () {
              onDeleteItem(toDo.id);
            },
          ),
        ),
      ),
    );
  }
}
