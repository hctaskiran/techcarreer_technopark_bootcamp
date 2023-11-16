import 'package:flutter/material.dart';
import 'package:techcarreer_technopark_bootcamp/services/api_service.dart';
import '../model/user_model.dart';

class CustomHome extends StatefulWidget {
  const CustomHome({super.key});

  @override
  State<CustomHome> createState() => _CustomHomeState();
}

class _CustomHomeState extends State<CustomHome> {
  List<UserModel>? userModel = [];

  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    userModel = await (ApiService().getUsers());
  }


  @override
  Widget build(BuildContext context) {
    const Widget appBarTitle = Text('API Test');
    return Scaffold(
      appBar: AppBar(title: appBarTitle),
      body: userModel == null || userModel!.isEmpty 
      ? const Center(child: CircularProgressIndicator()) 
      : ListView.builder(
        itemCount: userModel!.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(userModel![index].id.toString()),
                    Text(userModel![index].name.toString()),
                  ],
                )
              ],
            ),
          );
        }
      )
    );
  }
}