import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  //const detailScreen({Key? key}) : super(key: key);

  Map data;

  DetailScreen(this.data, {super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.black,
                          size: 25,
                        )),
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Colors.redAccent,
                  ),
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Image(
            image: NetworkImage(widget.data['des image']),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Container(
              height: 450,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text("McDonald's",
                                    style: TextStyle(fontSize: 15)),
                                SizedBox(width: 15),
                                Icon(Icons.star,
                                    size: 15, color: Colors.yellow),
                                Icon(Icons.star,
                                    size: 15, color: Colors.yellow),
                                Icon(Icons.star,
                                    size: 15, color: Colors.yellow),
                                Icon(Icons.star,
                                    size: 15, color: Colors.yellow),
                                Icon(
                                  Icons.star_border,
                                  size: 15,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              widget.data['name'],
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "₹" + widget.data['price'],
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  color: Colors.yellow, size: 28),
                              const SizedBox(width: 5),
                              Text(
                                widget.data['rate'],
                                style: const TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.local_fire_department,
                                  color: Colors.deepOrange, size: 25),
                              const SizedBox(width: 3),
                              Text(
                                widget.data['calories'],
                                style: const TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.alarm,
                                  color: Colors.red, size: 25),
                              const SizedBox(width: 5),
                              Text(
                                widget.data['time'],
                                style: const TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ]),
                    const SizedBox(height: 30),
                    const Text(
                      "Details",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.data['des'],
                      style: const TextStyle(color: Colors.grey),
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
                                  const Text(
                                    "Total Price",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "${"₹" + widget.data['price']}.00",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () => {},
                                child: const Text("Add To Cart"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
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
