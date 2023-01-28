import 'package:flutter/material.dart';
import 'package:mvvm_model/view_model/view_model.dart';



class JsonPlaceHolderView extends JsonPlaceHolderViewModel {
  @override
  void initState() {
    // TODO: implement initState
    getPost();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: isLoading
            ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white))
            : const Text("Jsonplaceholder"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => getPost()),
      body: ListView.builder(
          itemCount: postModel.length,
          itemBuilder: (context, index) => Card(
                child: ListTile(
                  title: Text(postModel[index].title),
                  subtitle: Text(postModel[index].body),
                  leading: Text(postModel[index].id.toString()),
                ),
              )),
    );
  }
}