import 'package:flutter/material.dart';

class MoneyInputField extends StatefulWidget {
  final Function(double) onChanged;

  const MoneyInputField({Key? key, required this.onChanged}) : super(key: key);

  @override
  _MoneyInputFieldState createState() => _MoneyInputFieldState();
}

class _MoneyInputFieldState extends State<MoneyInputField> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
        labelText: 'Enter amount',
        prefixIcon: Icon(Icons.attach_money),
        border: OutlineInputBorder(),
      ),
      onChanged: (value) {
        // Convert text to double and pass it to onChanged callback
        if (value.isNotEmpty) {
          widget.onChanged(double.parse(value));
        } else {
          widget.onChanged(0.0);
        }
      },
    );
  }
}