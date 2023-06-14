import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class card_food extends StatefulWidget {
  const card_food({Key? key}) : super(key: key);

  @override
  State<card_food> createState() => _card_foodState();
}

class _card_foodState extends State<card_food> {
  List<Map<String, dynamic>> menu = [
    {
      'image': 'assets/images/browny1.png',
      'name': 'Orange Sandwiches',
      'weight': '520g',
      'price': '\$12.00',
    },
    {
      'image': 'assets/images/cake1.png',
      'name': 'Sai Ua Samun Pharai',
      'weight': '480g',
      'price': '\$18.00',
    },
    {
      'image': 'assets/images/fruit_cake_plate.png',
      'name': 'Fruit cake',
      'weight': '260g',
      'price': '\$4.88',
    },
  ];

  List<Map<String, dynamic>> item = [
    {
      'title': 'Ltem toal:',
      'price': '\$47.00',
    },
    {
      'title': 'Delivery Charge:',
      'price': '\$1.00',
    },
    {
      'title': 'Taxt:',
      'price': '\$0.50',
    },
    {
      'title': 'Total:',
      'price': '\$36.38',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                    Text(
                      'Cart Food',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: List.generate(
                    3,
                    (index) => Container(
                      width: double.infinity,
                      height: 130,
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              menu[index]['image'],
                              height: 100,
                              width: 100,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                menu[index]['name'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                menu[index]['weight'],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    menu[index]['price'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  CounterWidget()
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                    children: List.generate(
                  4,
                  (index) => ListTile(
                    leading: Text(
                      item[index]['title'],
                      style: TextStyle(
                        color: index == 3 ? Colors.black : Colors.grey,
                        fontSize: index == 3 ? 30 : 18,
                        fontWeight:
                            index == 3 ? FontWeight.bold : FontWeight.w500,
                      ),
                    ),
                    trailing: Text(
                      item[index]['price'],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: index == 3 ? 30 : 18,
                        fontWeight:
                            index == 3 ? FontWeight.bold : FontWeight.w500,
                      ),
                    ),
                  ),
                )),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.yellowAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (count > 1) {
                    count--;
                  }
                });
              },
              child: InkWell(
                child: Icon(
                  Icons.remove,
                  color: Colors.black,
                  size: 22,
                ),
              ),
            ),
            Text(
              '$count',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (count >= 1) {
                    count++;
                  }
                });
              },
              child: InkWell(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 22,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
