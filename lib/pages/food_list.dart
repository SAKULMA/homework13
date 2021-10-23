import 'package:flutter/material.dart';

import "food_item.dart";
import 'food_detail.dart';



class FoodListpage extends StatefulWidget {
  const FoodListpage({Key? key}) : super(key: key);

  @override
  _FoodListpageState createState() => _FoodListpageState();
}

class _FoodListpageState extends State<FoodListpage> {
  var items = [
    FoodItem(id: 1, name: "Chili-Mince Cornbread Buns", price: 30, image: 'assert/images/img.png'),
    FoodItem(id: 2, name: "Golden Shrimp Balls", price: 40, image: 'img_1.png'),
    FoodItem(id: 3, name: "Tricolor Dango", price: 40, image: 'img_2.png'),
    FoodItem(id: 4, name: "Sakura Tempura", price: 40, image: 'img_3.png'),
    FoodItem(id: 5, name: "Sakura Mochi", price: 40, image: 'img_4.png'),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          var item = items[index];

          return Card(
            margin: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, FoodDetail.routeName,
                  arguments: item,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/${item.image}',
                      width: 60.0,
                      height: 60.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text('${item.price} บาท',style: TextStyle(fontSize: 15.0,)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}