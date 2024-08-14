import 'package:assignment_4/Model/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class list_view extends StatefulWidget {
  @override
  State<list_view> createState() => _list_viewState();
}

class _list_viewState extends State<list_view> {
  @override
  void initState() {
    super.initState();
    Provider.of<PostData>(context, listen: false).fetchPosts();
  }
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostData>(context);
    return SafeArea(
      child: postProvider.isLoading
        ? Center(child: CircularProgressIndicator())
        : postProvider.errorMessage != null
        ? Center(child: Text(postProvider.errorMessage!))
        : ListView.builder(
      itemCount: postProvider.posts.length,
      itemBuilder: (context, index) {
        return ListTile(
          tileColor: Colors.white60,
          leading: Text(postProvider.posts[index]['id'].toString()),
          title: Text(postProvider.posts[index]['title'],style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text(postProvider.posts[index]['body']),
        );
      },
    ),);
  }
}
