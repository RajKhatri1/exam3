import 'package:flutter/material.dart';

class S2 extends StatefulWidget {
  const S2({Key? key}) : super(key: key);

  @override
  State<S2> createState() => _S2State();
}

class _S2State extends State<S2> {
  TextEditingController id = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController standerd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: id,
                decoration: InputDecoration(
                  hintText: "Enter student id",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: "Enter student Name",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              TextField(
                controller: standerd,
                decoration: InputDecoration(
                  hintText: "Enter student standerd",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white, width: 3),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        spreadRadius: 1,
                        offset: Offset(1, 1),
                        blurRadius: 1,
                        blurStyle: BlurStyle.outer)
                  ],
                ),
                child: Center(
                  child: InkWell(onTap: () {

                  },
                    child: Text(
                      "sumbit",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
