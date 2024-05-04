import 'package:flutter/material.dart';

class ColorChangeWidget extends StatefulWidget {
  @override
  _ColorChangeWidgetState createState() => _ColorChangeWidgetState();
}

class _ColorChangeWidgetState extends State<ColorChangeWidget> {
  Color _currentColor = Colors.blue;
  void _changeColor() {
    setState(() {
      if (_currentColor == Colors.blue) {
        _currentColor = Colors.red;
      } else {
        _currentColor = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _changeColor();
      },
      child: Container(
        color: _currentColor,
        width: 200.0,
        height: 200.0,
        alignment: Alignment.center,
        child: Text(
          'Color: $_currentColor',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
