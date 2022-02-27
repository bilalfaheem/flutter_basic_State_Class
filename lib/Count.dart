import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  const Count(
      {Key? key,
      required this.countt,
      required this.onCountSelected,
      required this.onCountChange})
      : super(key: key);

  final int countt;
  final VoidCallback onCountSelected;

  final Function(int) onCountChange;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      IconButton(
          onPressed: () {
            onCountChange(1);
          },
          icon: Icon(Icons.add)),
      TextButton(child: Text("$countt"), onPressed: () => onCountSelected()),
      IconButton(
          onPressed: () {
            onCountChange(-1);
          },
          icon: Icon(Icons.remove))
    ]);
  }
}
