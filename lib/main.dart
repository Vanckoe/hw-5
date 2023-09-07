import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, // Изменить цвет AppBar на синий
        ),
        body: Center(
          // Центрировать содержимое
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.green, // Поменять Background Color на зеленый
                padding: EdgeInsets.all(30.0),
                margin: EdgeInsets.all(30.0),
                child: Text(
                  "Adil Talasbek",
                  style: TextStyle(
                    // Изменить шрифт текста и цвет текста
                    fontSize: 34,
                    color: Colors.white, // Изменить цвет текста на белый
                  ),
                ),
              ),
              SizedBox(height: 20), // Добавить пространство между контейнерами
              Container(
                color: Colors.orange, // Цвет нового Container
                child: Text(
                  "ИС 20.810 digital marketing", // Любой текст
                  style: TextStyle(
                    // Стиль текста для нового Container
                    fontSize: 24,
                    color: Colors.black, // Цвет текста
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
