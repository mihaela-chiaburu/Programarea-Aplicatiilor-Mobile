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
      title: 'Convert Temperature',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      home: MyHomePage(),
    );
  }
}

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

class TemperatureInputWidget extends StatefulWidget {
  final Function(double?) onTemperatureChanged;
  
  const TemperatureInputWidget({super.key, required this.onTemperatureChanged});
  
  @override
  State<TemperatureInputWidget> createState() => _TemperatureInputWidgetState();
}

class _TemperatureInputWidgetState extends State<TemperatureInputWidget> {
  final inputController = TextEditingController();
  
  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }
  
  void handleTemperatureChange(String value) {
    double? temperatureDouble = double.tryParse(value);
    widget.onTemperatureChanged(temperatureDouble);
  }
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: inputController,
      decoration: InputDecoration(
        suffixIcon: Image.asset('images/thermometer.png', width: 8, height: 8),
        hintText: "Enter the temperature",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onChanged: handleTemperatureChange,
    );
  }
}

enum TemperatureMeasurementUnits { celsius, fahrenheit, kelvin }

class RadioExample extends StatefulWidget {
  final TemperatureMeasurementUnits initialValue;
  final Function(TemperatureMeasurementUnits?) onChanged;
  
  const RadioExample({
    super.key, 
    required this.initialValue,
    required this.onChanged,
  });
  
  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  TemperatureMeasurementUnits? _tempUnit;
  
  @override
  void initState() {
    super.initState();
    _tempUnit = widget.initialValue;
  }
  
  @override
  Widget build(BuildContext context) {
    return RadioGroup<TemperatureMeasurementUnits>(
      groupValue: _tempUnit,
      onChanged: (TemperatureMeasurementUnits? value) {
        setState(() {
          _tempUnit = value;
        });
        widget.onChanged(value);
      },
      child: Column(
        children: <Widget>[
          ListTile(
            dense: true,
            title: Text('Celsius (°C)'),
            leading: Radio<TemperatureMeasurementUnits>(
              value: TemperatureMeasurementUnits.celsius,
            ),
          ),
          ListTile(
            dense: true,
            title: Text('Fahrenheit (°F)'),
            leading: Radio<TemperatureMeasurementUnits>(
              value: TemperatureMeasurementUnits.fahrenheit,
            ),
          ),
          ListTile(
            dense: true,
            title: Text('Kelvin (K)'),
            leading: Radio<TemperatureMeasurementUnits>(
              value: TemperatureMeasurementUnits.kelvin,
            ),
          ),
        ],
      ),
    );
  }
}