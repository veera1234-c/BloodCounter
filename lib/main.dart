import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: SafeArea(
      child: MyBloodCounter(),
    )),
  ));
}

class MyBloodCounter extends StatefulWidget {
  const MyBloodCounter({super.key});

  @override
  State<StatefulWidget> createState() => _MyBloodCounterState();
}

class _MyBloodCounterState extends State<MyBloodCounter> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 250,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.shade100,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 145,
                  width: MediaQuery.of(context).size.width * 0.48,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text("Saritha\nBlood\nBank",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Positioned(
                            top: 5,
                            left: 5,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: new BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
              Container(
                  height: 145,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Blood Group",
                        style: TextStyle(color: Colors.red),
                      ),
                      Text("B +ve", style: TextStyle(fontSize: 20)),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Add Units"),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (number > 0)
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: number > 0
                                    ? IconButton(
                                        onPressed: Minus,
                                        icon: Icon(Icons.remove))
                                    : Container(),
                              ),
                            Container(
                              child: Text(
                                number.toString(),
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            if (number < 9)
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: number < 9
                                    ? IconButton(
                                        onPressed: Add, icon: Icon(Icons.add))
                                    : Container(),
                              )
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          if (number == 9)
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(
                20,
              ),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "You have reached max capacity",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
        ],
      ),
    );
  }

  void Minus() {
    setState(() {
      number = number - 1;
    });
  }

  void Add() {
    setState(() {
      number = number + 1;
    });
  }
}
