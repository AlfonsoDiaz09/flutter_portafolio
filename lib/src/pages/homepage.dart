
import 'package:flutter/material.dart';
import 'package:flutter_portafolio/src/widgets/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    String title = 'Producto';
    bool cTitle = true;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: cTitle,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.grey,
            child: Text(
              counter.toString()
            ),
          )
        ],
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        hoverColor: Colors.yellow,
        tooltip: 'Incrementar contador',
        child: const Icon(Icons.add),
        onPressed: (){
          setState(() {

            counter++;
            
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: const Product(),
    );
  }
}