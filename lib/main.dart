import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold( //scaffold provides basic structure
        backgroundColor: const Color.fromARGB(255, 255, 153, 196), 
        appBar: AppBar(
          title: const Text("My First Flutter App"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 62, 123, 255),
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
        ),
        body: Center(
          child: Container(
            height: 300, 
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              //curve corners
              borderRadius: BorderRadius.circular(20),
            ), //cant use color and decoration together
            padding: EdgeInsets.all(25), //padding inside container
            //padding: EdgeInsets.only(top: 20, left: 10), //custom padding)
            
            child: Column( //column to arrange widgets vertically, takes children of widgets
            //only one child allowed in container, so use column for multiple children
              mainAxisAlignment: MainAxisAlignment.center, //center vertically
              crossAxisAlignment: CrossAxisAlignment.center, //center horizontally
              children: [
                
                const Text(
                  "Mychaela",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 216, 129, 158),
                  ),
                ),
                const Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 48, 129, 122),
                  size: 50,
                ),
              ],
            ),
          ),
        ),
      ), //removes debug banner
    );
  }
}




/*
Notes:
everything is a widget in flutter



//for loops like java
//if else statements like java
//functions like java
//built in type checking

/*

------------------------------------------------
Data Structures:

List<int> numbers = [1, 2, 3, 4, 5]; //like array

Map: stores key-value pairs
Map<String, int> scores = {'Alice': 90, 'Bob': 85}; //like dictionary (like java hashmap)
scores['Alice'] = 95; //updating value

Map user = {
  'name': 'Alice',
  'age': 25,
  'isStudent': true
};
user['age'] = 26; //updating value
user['city'] = 'New York'; //adding new key-value pair

Set<String> uniqueNames = {'Alice', 'Bob', 'Charlie'}; //like hashset
*/

//statless widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  //functions
  void greetUser(String name) {
    print('Hello, $name!');
  }

  int add(int a, int b) {
    return a + b;
  }

  @override
  Widget build(BuildContext context) {
    greetUser('Alice'); //function call
    print(add(5, 7)); //function call
    return const MaterialApp( //always need to return material app
    debugShowCheckedModeBanner: false,
    home: Scaffold()
    );
  }
}



*/