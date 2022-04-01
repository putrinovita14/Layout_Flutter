import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'MyGallery'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridView.builder(
          primary: false,
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 30,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.network('https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2673918804/O1CN01CgS3U82EuHfsY6OIy_!!2673918804.jpg_400x400.jpg'),
            );
          }
          // Container(
          //   padding: const EdgeInsets.all(8),
          //   decoration: BoxDecoration(
          //     image: DecorationImage(image: NetworkImage('https://peta-hd.com/peta-indonesia-png/'), fit: BoxFit.cover),
          //   ),
          // ),
          //],
          ),
    );
  }
}
