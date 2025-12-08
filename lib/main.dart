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
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 153, 196),
        appBar: AppBar(
          title: const Text("My First Flutter App"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 62, 123, 255),
          leading: const Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
          ],
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 400,
            // We give the container a max height so it doesn't overflow screen
            // or just let it grow with the child.
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(25),
            
            // FIX 2: Add shrinkWrap so the list only takes up necessary space
            child: ListView(
              shrinkWrap: true, 
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
                const Text(
                  "I am learning Flutter and Dart. Flutter is awesome!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                Container(
                  height: 50, // Reduced from 500 to fit on screen easier
                  color: Colors.blue,
                ), 
                
                // FIX 1: Removed Expanded. Changed to a fixed Container.
                Container(
                  height: 400, 
                  width: 200, 
                  color: Colors.pink
                ),
                GridView.builder(
                  shrinkWrap: true, 
                  physics: const NeverScrollableScrollPhysics(), // Disable GridView scrolling
                  
                  itemCount: 64,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 8, // 8 columns
                  ),
                  
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.green,
                      margin: const EdgeInsets.all(2),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
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

Dynamic typing:
ListView.builder(
  itemCount: 10
  itemBuilder: (context, index) ==> ListTile(
    title: Text('Item $index'),
    );
  },
);

List names = ["Mitch, "Sharon", "John", "Doe"];
ListView.builder(
  itemCount: names.length,
  itemBuilder: (context, index) ==> ListTile(
      title: Text(names[index]),
    );
  },
);

*/