import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../model/post_model.dart';
import '../pages/update_page.dart';
import '../view_model/home_view_model.dart';

Widget ItemOfPost(BuildContext context, HomeViewModel viewModel, Post post) {
  return Slidable(
    actionPane: SlidableDrawerActionPane(),
    actionExtentRatio: 0.25,
    child: Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            post.title!.toUpperCase(),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 5,),

          // Body
          Text(post.body!),
        ],
      ),
    ),
    actions: [
      IconSlideAction(
        caption: 'Edit',
        color: Colors.indigo,
        icon: Icons.edit,
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => UpdatePage(post: post)));
        },
      ),
    ],

    secondaryActions: [
      IconSlideAction(
        caption: 'Delete',
        color: Colors.red,
        icon: Icons.delete,
        onTap: () {
          viewModel.apiPostDelete(post).then((value) {
            if (value) viewModel.apiPostList();
          });


        },
      ),
    ],
  );
}