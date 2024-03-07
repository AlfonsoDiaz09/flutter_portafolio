
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  String selectedColor = '';
  String blueColor = 'https://cdn.pixabay.com/photo/2014/04/03/11/08/all-star-converse-311825__340.png';
  String orangeColor = 'https://cdn.pixabay.com/photo/2014/04/03/11/52/shoe-312435__340.png';

  @override
  void initState() {
    selectedColor = blueColor;
    super.initState();
  }

  void switchBlue() {
    setState(() {
      selectedColor = blueColor;
    });
  }

  void switchOrange() {
    setState(() {
      selectedColor = orangeColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 25.0,
          ),
          child: Container(
            height: 420.0,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50.0)
              ),
              image: DecorationImage(
                image: NetworkImage(
                  selectedColor,
                  scale: 2.0,
                )
              )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 18.0
          ),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 15.0,
            children: [
              const Text(
                'Colores:'
              ),
              GestureDetector(
                onTap: (){
                  switchBlue();
                },
                child: const CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2014/04/03/11/08/all-star-converse-311825__340.png'
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  switchOrange();
                },
                child: const CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2014/04/03/11/52/shoe-312435__340.png'
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Voluptate tempor do nostrud amet aliquip et mollit in Lorem magna quis esse excepteur. Id mollit ea incididunt reprehenderit eiusmod officia voluptate occaecat. Ad irure cupidatat nisi minim commodo. Cupidatat sint nostrud fugiat duis reprehenderit occaecat aliqua aute veniam proident magna voluptate minim.'),
        )
      ],
    );
  }
}