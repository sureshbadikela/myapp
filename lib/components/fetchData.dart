import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class fetchData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPhotosListView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PhotoModel {
  String title;
  String url;

  PhotoModel({required this.title, required this.url});

  factory PhotoModel.fromJson(Map<String, dynamic> map) {
    return PhotoModel(
      title: map["title"],
      url: map["url"],
    );
  }
}

class MyPhotosListView extends StatefulWidget {
  @override
  _MyPhotosListViewState createState() => _MyPhotosListViewState();
}

class _MyPhotosListViewState extends State<MyPhotosListView> {
  List<PhotoModel> _photosModelList = [];

  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    fetchPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Photos"),
      ),
      body: !isLoaded
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _photosModelList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text("${_photosModelList[index].title}"),
                    leading: Image.network("${_photosModelList[index].url}"),
                  ),
                );
              },
            ),
    );
  }

  void fetchPhotos() async {
    var data = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    var listMap = await json.decode(data.body) as List;
    _photosModelList = listMap.map((item) => PhotoModel.fromJson(item)).toList();
    setState(() {
      isLoaded = true;
    });
  }
}
