
import 'package:calculator_project/pages/calculatorpage.dart';
import 'package:calculator_project/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorPage(),
    );
  }
}

/*
main.dart
main() - > runApp(MyApp()) => MyApp() => return MaterialApp() => home: Scaffold() => return Scaffold(appBar, body)

Int a = 1
print(a)

Lists, Sets, Maps
               0 1  2  3 4  5
List<Int> nums = [12,24,35,14,25,46]
nums[index]
print(nums[5])

Sets
Set nums ={1,2,3,4,4,5,5,6}



* */