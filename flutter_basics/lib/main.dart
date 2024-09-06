import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          flexibleSpace: Image.asset(
            "assets/back.jpg",
            fit: BoxFit.cover,
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                text: 'Test 1',
              ),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          elevation: 55.0,
        ),
        body: TabBarView(children: [
          tab1(),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike)
        ]),
      ),
    );
  }
}

Widget tab1() {
  return Container(
    child: Center(
      child: Text('Test'),
    ),
  );
}
