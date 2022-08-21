//ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class TempConvert extends StatefulWidget{
 // const TempConvert({Key? key, required String title}) : super(key: key);

  @override
  State<TempConvert> createState() => _TempConvertState();
}

class _TempConvertState extends State<TempConvert> {
  var result = '';
  final _cal = TextEditingController();

  //state variable
 // var _feedbackText = '';
  //var _showTestButton = false;

  void ClickCtoF() {
    var input = int.tryParse(_cal.text);

    if (input == null) {
      print('Please enter a value to convert');
      setState(() {
        result = 'Please enter a value to convert';
      });
    } else {
      var f = (9/5)*(input) + 32;
      setState(() {
        result = '$input Celsius = $f Fahrenheit';
      });
    }
  }
  void ClickCToK() {
    var input = int.tryParse(_cal.text);

    if (input == null) {
      print('Please enter a value to convert');
      setState(() {
        result = 'Please enter a value to convert';
      });
    } else {
      var k = input + 273;
      setState(() {
        result = '$input Celsius = $k Kelvin';
      });
    }
  }
  void ClickFtoC() {
    var input = int.tryParse(_cal.text);

    if (input == null) {
      print('Please enter a value to convert');
      setState(() {
        result = 'Please enter a value to convert';
      });
    } else {
      var c = (5/9)*(input-32);
      setState(() {
        result = '$input Fahrenheit = $c Celsius';
      });
    }
  }
  void ClickFtoK() {
    var input = int.tryParse(_cal.text);

    if (input == null) {
      print('Please enter a value to convert');
      setState(() {
        result = 'Please enter a value to convert';
      });
    } else {
      var k = (5/9)*(input-32)+273;
      setState(() {
        result = '$input Fahrenheit = $k Kelvin';
      });
    }
  }
  void ClickKtoC() {
    var input = int.tryParse(_cal.text);

    if (input == null) {
      print('Please enter a value to convert');
      setState(() {
        result = 'Please enter a value to convert';
      });
    } else {
      var c = input-273;
      setState(() {
        result = '$input Kelvin = $c Celsius';
      });
    }
  }
  void ClickKtoF() {
    var input = int.tryParse(_cal.text);

    if (input == null) {
      print('Please enter a value to convert');
      setState(() {
        result = 'Please enter a value to convert';
      });
    } else {
      var f = (9/5)*(input-273)+32;
      setState(() {
        result = '$input Kelvin = $f Fahrenheit';
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold( //กำหนดพื้นหลังมาแล้ว ลิ้งค์มาแล้ว
      appBar: AppBar(
        title: const Text('Midterm Exam'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('temperature converter'),
            TextField(
              controller: _cal,//ตัวแปร
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a temperature value to convert',
              ),
            ),
            //Event handler ตัวการจัดการ //callback function

            ElevatedButton(
              onPressed: ClickCtoF,
              child: const Text('Celsius to Fahrenheit'),
            ),
            ElevatedButton(
              onPressed: ClickCToK,
              child: const Text('Celsius to Kelvin'),
            ),
            ElevatedButton(
              onPressed: ClickFtoC,
              child: const Text('Fahrenheit to Celsius'),
            ),ElevatedButton(
              onPressed: ClickKtoC,
              child: const Text('Kelvin to Celsius'),
            ),ElevatedButton(
              onPressed: ClickKtoF,
              child: const Text('Kelvin to Fahrenheit'),
            ),ElevatedButton(
              onPressed: ClickFtoK,
              child: const Text('Fahrenheit to Kelvin'),
            ),
            Text(result), //เรนเดอร์ใหม่
            Container(
              decoration: BoxDecoration(
                color: Colors.white, //สีพื้นหลังของ Container
                border: Border.all(
                  width: 5.0,
                  color: Colors.deepPurple.shade200,
                ),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(

              ),
            )



            // ElevatedButton(
            //   style: OutlinedButton.styleFrom(
            //     backgroundColor: _showTestButton ? Colors.black : Colors.yellow, //ปุ่มTestสีดำฟ้าสลับกัน
            //
            //   ),
            //   onPressed: () {},
            //   child: const Text('Test'),
            // ),
            // Icon(_showTestButton ? Icons.print : Icons.access_time_rounded), //ไอคอนสลับกัน
          ],
        ),
      ),
    );
  }
}