import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RadioButtonWidget extends StatefulWidget {
  String options;
  String item1;
  String item2;

  RadioButtonWidget(
      {super.key,
      required this.options,
      required this.item1,
      required this.item2});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  String _selectedOption = 'Add Food';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.options,
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: <Widget>[
                  Radio<String>(
                    value: widget.item1,
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                  Text(widget.item1),
                ],
              ),
              Row(
                children: <Widget>[
                  Radio<String>(
                    value: widget.item2,
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                  Text(widget.item2),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
