import 'package:flutter/material.dart';
import '../widgets/temperature_input.dart';
import '../widgets/radio_example.dart';
import '../models/temperature_units.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double? inputTemperature;
  TemperatureMeasurementUnits fromUnit = TemperatureMeasurementUnits.celsius;
  TemperatureMeasurementUnits toUnit = TemperatureMeasurementUnits.fahrenheit;
  String convertedResult = "";

  double convertTemperature(double temp, TemperatureMeasurementUnits from, TemperatureMeasurementUnits to) {
    if (from == to) return temp;
    
    double celsius;
    switch (from) {
      case TemperatureMeasurementUnits.celsius:
        celsius = temp;
        break;
      case TemperatureMeasurementUnits.fahrenheit:
        celsius = (temp - 32) * 5 / 9;
        break;
      case TemperatureMeasurementUnits.kelvin:
        celsius = temp - 273.15;
        break;
    }
    
    switch (to) {
      case TemperatureMeasurementUnits.celsius:
        return celsius;
      case TemperatureMeasurementUnits.fahrenheit:
        return celsius * 9 / 5 + 32;
      case TemperatureMeasurementUnits.kelvin:
        return celsius + 273.15;
    }
  }

  void updateConversion() {
    if (inputTemperature != null) {
      double result = convertTemperature(inputTemperature!, fromUnit, toUnit);
      setState(() {
        convertedResult = "${result.toStringAsFixed(2)} ${getUnitSymbol(toUnit)}";
      });
    } else {
      setState(() {
        convertedResult = "";
      });
    }
  }

  String getUnitSymbol(TemperatureMeasurementUnits unit) {
    switch (unit) {
      case TemperatureMeasurementUnits.celsius:
        return "°C";
      case TemperatureMeasurementUnits.fahrenheit:
        return "°F";
      case TemperatureMeasurementUnits.kelvin:
        return "K";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Convert Temperature', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TemperatureInputWidget(
              onTemperatureChanged: (temp) {
                inputTemperature = temp;
              },
            ),
            SizedBox(height: 17),
            Text('From:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
            RadioExample(
              initialValue: fromUnit,
              onChanged: (value) {
                setState(() {
                  fromUnit = value!;
                });
              },
            ),
            SizedBox(height: 17),
            Text('To:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
            RadioExample(
              initialValue: toUnit,
              onChanged: (value) {
                setState(() {
                  toUnit = value!;
                });
              },
            ),
            SizedBox(height: 17),
            Center(
              child: ElevatedButton(
                onPressed: updateConversion,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                  textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                child: Text('Calculate'),
              ),
            ),
            SizedBox(height: 15),
            if (convertedResult.isNotEmpty)
              Center(
                child: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade50,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.indigo.shade200),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Result:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      SizedBox(height: 8),
                      Text(
                        convertedResult,
                        style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.indigo),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
