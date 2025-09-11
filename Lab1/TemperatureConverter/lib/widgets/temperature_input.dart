import 'package:flutter/material.dart';

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
        border: const OutlineInputBorder(),
      ),
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      onChanged: handleTemperatureChange,
    );
  }
}
