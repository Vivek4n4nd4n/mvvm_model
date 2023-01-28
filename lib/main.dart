import 'package:flutter/material.dart';
import 'package:mvvm_model/view/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
         primarySwatch: Colors.blue,
      ),
      home: 
JsonPlaceHolder()
    );
  }
}

class JsonPlaceHolder extends StatefulWidget {
  @override
  JsonPlaceHolderView createState() =>  JsonPlaceHolderView();
}
