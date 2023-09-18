import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(const MyApp());
}

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/HOKAGE2.json');
}
class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(height: 200),
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Text(
                  "Task1",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 450),
              Container(
                  alignment: Alignment.centerLeft,
                  child:Text(
                      'Task2',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 34)
                  )
              ),
              SizedBox(height: 450),
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Text(
                  "Task3",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 510),
              Container(
                  height: 810,
                  decoration: BoxDecoration(color: Colors.lightGreen),
                  alignment: Alignment.centerLeft,
                  child:Text(
                      'Task4 //// Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                  )
              ),
              Container(
                  height: 710,
                  decoration: BoxDecoration(color: Colors.lightBlueAccent),
                  alignment: Alignment.topCenter,
                  child:RichText(
                      textDirection: TextDirection.ltr,
                      text: TextSpan(
                        style: TextStyle(fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(text: "task5    ", style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.normal)),
                          TextSpan(text: "task5    ", style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.normal)),
                          TextSpan(text: "task5", style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.normal)),

                        ],
                      )
                  )
              ),
              Container(
                  height: 810,
                  decoration: BoxDecoration(color: Colors.white),
                  alignment: Alignment.topCenter,
                  child:Text(
                    'Task6 //// Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  )
              ),
              Container(
                  height: 810,
                  decoration: BoxDecoration(color: Colors.greenAccent),
                  alignment: Alignment.topLeft,
                  child:ClipPath(
                    clipper: MyCustomClipper(), // <--
                    child: Container(
                      width: 20,
                      height: 20,
                      color: Colors.pink,
                    ),
              )
              ),
              Container(
                height: 810,
                decoration: BoxDecoration(color: Colors.white),
                alignment: Alignment.center,
                child:
                Image.network("https://blog.logrocket.com/wp-content/uploads/2021/04/Building-Flutter-desktop-app-tutorial-examples.png"),
                width: 300,
              ),
              Container(
                height: 810,
                decoration: BoxDecoration(color: Colors.grey),
                alignment: Alignment.topCenter,
                child:
                Image.network("https://kartinkof.club/uploads/posts/2022-04/1649590989_2-kartinkof-club-p-ugarnie-kartinki-kartinka-ti-super-2.jpg"),
              ),
              SizedBox(height: 310),


              TextButton(

                  child: Text("TextButton Task10", style: TextStyle(fontSize: 22)),
                  onPressed:(){}
              ),
              ElevatedButton(

                  child: Text("ElevatedButton", style: TextStyle(fontSize: 22)),
                  onPressed:(){}
              ),

              OutlinedButton(

                  child: Text("OutlinedButton", style: TextStyle(fontSize: 22)),
                  onPressed:(){}
              ),
              SizedBox(height: 310),

              //Container(
              //  color: Colors.white,
              //  child: Text(
              //      alignment: Alignment.centerLeft,
              //      child:Text(
              //  void main() {
              //   runApp(Container(
              //     padding: EdgeInsets.only(top:25, left:10, right:10),
              //     color: Colors.teal,
              //     child: RichText(
              //       textDirection: TextDirection.ltr,
              //         text: TextSpan(
              //           text: "Hello Flutter",
              //           style: TextStyle(fontSize: 20),
              //           children: <TextSpan>[
              //             TextSpan(text: " from ", style: TextStyle(color: Colors.red)),
              //             TextSpan(text: "Metanit.com", style: TextStyle(fontWeight: FontWeight.bold)),
              //           ],
              //       )
              //      )
              //     )
              //   );
              // }        'Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Таким образом постоянный количественный рост и сфера нашей активности способствует подготовки и реализации модели развития. ',
              //          textDirection: TextDirection.ltr,   // текст слева направо
              //          style: TextStyle(fontSize: 24) // высота шрифта 24
              //      )
              //  ),
              //),
            ],
          ),
        ),
      ),
    );
  }
}
