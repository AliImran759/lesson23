import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Lesson23(),
    );
  }
}

class Lesson23 extends StatelessWidget {
  const Lesson23({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffD9A8FF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Вход',
                  style:  TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 36),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  width: 339,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1,
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 50,
                  width: 339,
                  child:  TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        suffixIcon:  Icon(Icons.remove_red_eye_sharp),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        )),
                        hintText: 'Posword',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: 132,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Color(0xff743F8C),
                      blurRadius: 10,
                      offset: Offset(0,3),
                    )],
                    color: const Color(0xff743F8C),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text(
                    'Выйти',
                    style:  TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ]),
        ));
  }
}
