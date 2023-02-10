import 'package:exam2/firstScreen.dart';
import 'package:flutter/material.dart';

class S3 extends StatefulWidget {
  const S3({Key? key}) : super(key: key);

  @override
  State<S3> createState() => _S3State();
}

class _S3State extends State<S3> {
  List id=[
    "1",
    "2",
    "3",
  ];
  List name=[
    "Raj",
    "akhil",
    "ayushman",
  ];
  List std=[
    "10",
    "8",
    "12",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return detail(id[index],name[index],std[index]);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => S2(),
              ),
            );
          },
          child: Text("+"),
        ),
      ),
    );
  }

  Widget detail(String id , String name , String std) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.indigoAccent),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("$id"),
            Column(
              children: [
                Text("$name"),

                Text("$std"),
              ],
            ),
            Icon(Icons.edit),
            InkWell(onTap: () {
              id.
            },child: Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
