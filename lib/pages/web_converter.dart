import 'package:flutter/material.dart';
import 'package:midterm_630710324/pages/converter.dart';

class web_converter extends StatefulWidget {
  @override
  State<web_converter> createState() => pageCon();
}

class pageCon extends State<web_converter> {
  final _controller = TextEditingController();
  final _convert = converter();
  var _feedbackText = 'Please enter a value to convert.';
  var _temperature = 0.0;
  bool nonInfo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Midterm Exam'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(style: TextStyle(fontSize: 30), 'Temperature Converter'),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 1000,
            height: 250,
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a temperature value to Converter'),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        var temp = double.tryParse(_controller.text);
                        if (temp == null) {
                          _feedbackText = 'Please enter a value to convert.';
                          setState(() {});
                        } else {
                          _temperature = _convert.CelsiusToFahrenheit(temp!);
                          _feedbackText =
                              '$temp Celsius = $_temperature Fahrenheit';
                          setState(() {});
                        }
                      },
                      child: Text('celsius to fahrenheit'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var temp = double.tryParse(_controller.text);
                        if (temp == null) {
                          _feedbackText = 'Please enter a value to convert.';
                          setState(() {});
                        } else {
                          _temperature = _convert.CelsiusToKelvin(temp!);
                          _feedbackText =
                              '$temp Celsius = $_temperature Kelvin';
                          setState(() {});
                        }
                      },
                      child: Text('celsius to kelvin'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        var temp = double.tryParse(_controller.text);
                        if (temp == null) {
                          _feedbackText = 'Please enter a value to convert.';
                          setState(() {});
                        } else {
                          _temperature = _convert.FahrenheitToCelsius(temp!);
                          _feedbackText =
                              '$temp Fahrenheits = $_temperature Celsius';
                          setState(() {});
                        }
                      },
                      child: Text('fahrenheit to celsius'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var temp = double.tryParse(_controller.text);
                        if (temp == null) {
                          _feedbackText = 'Please enter a value to convert.';
                          setState(() {});
                        } else {
                          _temperature = _convert.FahrenheitToKelvin(temp!);
                          _feedbackText =
                              '$temp Fahrenheits = $_temperature Kelvin';
                          setState(() {});
                        }
                      },
                      child: Text('fahrenheit to kelvin'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        var temp = double.tryParse(_controller.text);
                        if (temp == null) {
                          _feedbackText = 'Please enter a value to convert.';
                          setState(() {});
                        } else {
                          _temperature = _convert.KelvinToCelsius(temp!);
                          _feedbackText =
                              '$temp Kelvin = $_temperature Celsius ';
                          setState(() {});
                        }
                      },
                      child: Text('kelvin to celsius'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var temp = double.tryParse(_controller.text);
                        if (temp == null) {
                          _feedbackText = 'Please enter a value to convert.';
                          setState(() {});
                        } else {
                          _temperature = _convert.KelvinToFahrenheit(temp!);
                          _feedbackText =
                              '$temp Kelvin = $_temperature Fahrenheit ';
                          setState(() {});
                        }
                      },
                      child: Text('kelvin to fahrenheit'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('$_feedbackText'),
        ],
      )),
    );
  }
}
