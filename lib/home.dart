import 'package:flutter/material.dart';

//code for drop down menu

class Dropdn extends StatefulWidget {
  const Dropdn({Key? key}) : super(key: key);

  @override
  State<Dropdn> createState() => _DropdnState();
}

class _DropdnState extends State<Dropdn> {
  String dropdownValue = "English";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      focusColor: Colors.white,
      dropdownColor: Colors.white70.withOpacity(0.8),
      value: dropdownValue,
      iconEnabledColor: Colors.black,
      icon: const Icon(Icons.arrow_downward_outlined),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['English', 'Hindi', 'Telugu', 'Tamil']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
