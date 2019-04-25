
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  final response = await http.get(
      'https://jsonplaceholder.typicode.com/posts/1',
      headers: {HttpHeaders.authorizationHeader : "Basic your_api_token_here"}
  );
  final responseJson = json.decode(response.body);
  return Post.fromJson(responseJson);
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(this.userId, this.id, this.title, this.body);

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post(json['userId'], json['id'], json['title'], json['body']);
  }
}

class HttpPackagePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpPackagePage'),
      ),
      body: Center(
        child: FutureBuilder<Post>(
            future: fetchPost(),
            builder: (context,content) {
              if(content.hasData){
                return Text(content.data.title);
              }else if(content.hasError) {
                return Text('${content.error}');
              }
              return CircularProgressIndicator();
            }
        ),
      ),
    );
  }
}

