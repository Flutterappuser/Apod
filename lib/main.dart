

import 'package:flutter/material.dart';
import 'package:untitled1/models/Apod.dart';
import 'package:intl/intl.dart';
import 'apod_detail.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apod',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Astronomy Picture of the Day'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(

        child: ListView.builder(
            itemCount: Apod.apods.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return (ApodDetail(apod: Apod.apods[index]));
                    }));
                  },


                  child: buildApodCard(Apod.apods[index]));
            }),
      ),
    );



  }
}


  Widget buildApodCard(Apod apod) {


    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image(
              image: AssetImage(apod.url!),
            ),
          ),
          Text(

            DateFormat('yyyy-MM-dd').format(apod.date!),
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          Text(
            apod.title!,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
