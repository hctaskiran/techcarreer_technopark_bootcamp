// ignore_for_file: file_names
import "package:animated_text_kit/animated_text_kit.dart";
import "package:flutter/material.dart";
import "../model/user_model.dart";
import "../services/api_services.dart";

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeWidget> {
  List<UserModel>? userModel = [];
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var users = await ApiService().getUser();
    setState(() {
      userModel = users;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: AnimatedTextKit(
            pause: const Duration(seconds: 3),
            repeatForever: true,
            animatedTexts: 
            [TyperAnimatedText("API EXAMPLE", speed: const Duration(milliseconds: 70))])
        ),
        body: userModel == null || userModel!.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : RefreshIndicator(
              onRefresh: () async {
                await Future.delayed(Duration(seconds: 2));
                getData();
              },
              child: ListView.builder(
                  itemCount: userModel!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(userModel![index].name),
                      subtitle: Text(userModel![index].email),
                    );
                  },
                ),
            ));
  }
}
