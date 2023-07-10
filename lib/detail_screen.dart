import 'package:flutter/material.dart';

class detailScreen extends StatefulWidget {
  //const detailScreen({Key? key}) : super(key: key);

  Map data;

  detailScreen(this.data);

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.black,
                      size: 25,
                    )),
              ),
              Icon(
                Icons.favorite,
                color: Colors.redAccent,
              ),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Image(
            image: NetworkImage(widget.data['des image']),
          ),
          SizedBox(height: 40),
          Expanded(
            child: Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("McDonald's", style: TextStyle(fontSize: 15)),
                                SizedBox(width: 15),
                                Icon(Icons.star, size: 15, color: Colors.yellow),
                                Icon(Icons.star, size: 15, color: Colors.yellow),
                                Icon(Icons.star, size: 15, color: Colors.yellow),
                                Icon(Icons.star, size: 15, color: Colors.yellow),
                                Icon(
                                  Icons.star_border,
                                  size: 15,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              widget.data['name'],
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "₹" + widget.data['price'],
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 28),
                              SizedBox(width: 5),
                              Text(
                                widget.data['rate'],
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.local_fire_department,
                                  color: Colors.deepOrange, size: 25),
                              SizedBox(width: 3),
                              Text(
                                widget.data['calories'],
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.alarm, color: Colors.red, size: 25),
                              SizedBox(width: 5),
                              Text(
                                widget.data['time'],
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ]),
                    SizedBox(height: 30),
                    Text(
                      "Details",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.data['des'],
                      style: TextStyle(color: Colors.grey),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Total Price",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "₹" + widget.data['price'] + ".00",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () => {},
                                child: Text("Add To Cart"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
