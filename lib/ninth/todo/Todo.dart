
import 'package:flutter/material.dart';

class Todo {
  String title;
  String destription;
  Todo(this.title, this.destription);
}

final mTodo = new List<Todo>.generate(10, (i) => Todo('TODO $i', 'A description of what needs to be done for Todo $i'));

class TodoList extends StatelessWidget{
  final List<Todo> todos;

  TodoList({Key key,@required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(todos[index].title),
            onTap: (){
              _navigateAndDisplaySelection(context,index);
            },
          );
        });
  }

  _navigateAndDisplaySelection(BuildContext context,int index) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TodoDestriptionScreen(todo: todos[index])));

    if(result != null)
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result'),duration: const Duration(seconds: 1),));
  }
}

class TodoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TodoList'),
      ),
      body: TodoList(todos: mTodo),
    );
  }
}

class TodoDestriptionScreen extends StatelessWidget{
  final Todo todo;
  TodoDestriptionScreen({Key key,@required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${todo.title}'),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${todo.destription}'),
            GestureDetector(
              child: Container(
                child:Text('${todo.title}',style: TextStyle(
                  color: Colors.white,
                ),),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black
                ),
              ),
              onTap: (){
                Navigator.pop(context,todo.title);
              },
            )
          ],
        ),
      ),
    );
  }
}