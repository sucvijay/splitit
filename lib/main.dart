import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 159, 141)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff009F8C),
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                  color: Color(0xff009F8C),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: const Stack(children: [
                Positioned(
                    bottom: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Spent",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "₹ 4000",
                          style: TextStyle(
                              fontSize: 36,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ])),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      color: Color(0xff009F8C),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () => null,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            "Add Expense",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Icon(
                            Icons.person_pin_sharp,
                            color: Colors.white,
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: SizedBox(
              width: double.maxFinite,
              child: Text(
                "Expenses",
                style: TextStyle(color: Color(0xff7C7C7C), fontSize: 12),
                textAlign: TextAlign.start,
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
