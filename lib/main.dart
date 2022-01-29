
import 'package:flutter/material.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // callback method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.lock, size: 80.0, color: Colors.blue),
                      Text('กรุณาใส่รหัสผ่าน',
                          style: TextStyle(fontSize: 32.0)),
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [for (var i = 1; i <= 3; i++) _buildButton(i)],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [for (var i = 4; i <= 6; i++) _buildButton(i)],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [for (var i = 7; i <= 9; i++) _buildButton(i)],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 42.0, right: 12.0),
                      child: _buildButton(0),
                    ),
                    Icon(Icons.backspace, color: Colors.blue, size: 28.0)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {},
                      child: Text('ลืมรหัสผ่าน',
                          style: TextStyle(fontSize: 16.0, color: Colors.blue))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(int? num) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        child: Text('$num',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade400, width: 3.0),
        ),
      ),
    );
  }
}
