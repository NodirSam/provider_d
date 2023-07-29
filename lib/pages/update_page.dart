import 'package:flutter/material.dart';
import '../model/post_model.dart';
import '../view_model/update_view_model.dart';

class UpdatePage extends StatefulWidget {
  static final String id = 'update_page';

  Post post = Post();
  UpdatePage({required this.post, Key? key}) : super(key: key);

  @override
  _UpdatePageState createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  UpdateViewModel viewModel = UpdateViewModel();

  @override
  void initState() {
    super.initState();

    viewModel.titleTextEditingController.text = widget.post.title!.toUpperCase();
    viewModel.bodyTextEditingController.text = widget.post.body!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Post'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // Title TextField
              Container(
                color: Colors.black12,
                child: TextField(
                  controller: viewModel.titleTextEditingController,
                  maxLines: 3,
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              // Title TextField
              Container(
                color: Colors.black12,
                child: TextField(
                  controller: viewModel.bodyTextEditingController,
                  maxLines: 10,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // FlatButton(
              //   onPressed: () {
              //     viewModel.apiPostUpdate(context, Post(userId: widget.post.userId, id: widget.post.id, title: viewModel.titleTextEditingController.text, body: viewModel.bodyTextEditingController.text));
              //   },
              //   color: Colors.blue,
              //   child: Text("Update"),
              // ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                width: 160,
                height: 100,
                child: TextButton(
                  onPressed: (){
                    viewModel.apiPostUpdate(context, Post(userId: widget.post.userId, id: widget.post.id, title: viewModel.titleTextEditingController.text, body: viewModel.bodyTextEditingController.text));
                  },
                  child: const Text(
                    "Update",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}