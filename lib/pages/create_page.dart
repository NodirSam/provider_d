import 'package:flutter/material.dart';
import '../view_model/create_view_model.dart';

class CreatePage extends StatefulWidget {
  static final String id = 'create_page';
  const CreatePage({Key? key}) : super(key: key);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  CreateViewModel viewModel = CreateViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),
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
                    hintText: 'Title',
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
                    hintText: 'Body',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // FlatButton(
              //   onPressed: () {
              //     viewModel.apiPostCreate(context, viewModel.titleTextEditingController.text, viewModel.bodyTextEditingController.text);
              //   },
              //   color: Colors.blue,
              //   child: Text("Create"),
              // ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                width: 160,
                height: 100,
                child: TextButton(
                  onPressed: (){
                    viewModel.apiPostCreate(context, viewModel.titleTextEditingController.text, viewModel.bodyTextEditingController.text);
                  },
                  child: const Text(
                    "Create",
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