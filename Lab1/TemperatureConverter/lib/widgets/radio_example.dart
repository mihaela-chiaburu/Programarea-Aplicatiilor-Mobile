import 'package:flutter/material.dart';
import '../models/temperature_units.dart';

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